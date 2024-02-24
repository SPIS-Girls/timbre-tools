/*
  ==============================================================================

    This file contains the basic framework code for a JUCE plugin processor.

  ==============================================================================
*/

#pragma once

#include <JuceHeader.h>
#include "AudioFft.h"

//==============================================================================
/**
*/
class SpisGirlsAudioProcessor  : public juce::AudioProcessor
{
public:
    //==============================================================================
    SpisGirlsAudioProcessor();
    ~SpisGirlsAudioProcessor() override;

    //==============================================================================
    void prepareToPlay (double sampleRate, int samplesPerBlock) override;
    void releaseResources() override;

   #ifndef JucePlugin_PreferredChannelConfigurations
    bool isBusesLayoutSupported (const BusesLayout& layouts) const override;
   #endif

    void processBlock (juce::AudioBuffer<float>&, juce::MidiBuffer&) override;

    //==============================================================================
    juce::AudioProcessorEditor* createEditor() override;
    bool hasEditor() const override;

    //==============================================================================
    const juce::String getName() const override;

    bool acceptsMidi() const override;
    bool producesMidi() const override;
    bool isMidiEffect() const override;
    double getTailLengthSeconds() const override;

    //==============================================================================
    int getNumPrograms() override;
    int getCurrentProgram() override;
    void setCurrentProgram (int index) override;
    const juce::String getProgramName (int index) override;
    void changeProgramName (int index, const juce::String& newName) override;

    //==============================================================================
    void getStateInformation (juce::MemoryBlock& destData) override;
    void setStateInformation (const void* data, int sizeInBytes) override;

    // our stuff
    std::shared_ptr<juce::Image> ourImage;
    juce::CameraDevice* camera;
    uint32_t samplesProcessedCount = 0;
    uint32_t imageCaptureTrigger = 0;

    std::function<void(const juce::Image&)> procImage = [this](const juce::Image& _image)
    {
        // RGB image
        float avgBleededRedness = 0;
        float avgBleededGreeness = 0;
        float avgBleededBlueness = 0;
        float avgCrunchiness = 0;
        float avgBrightness = 0;
        float avgSlinkiness = 0;

        // masking and bleeding thresholds
        float saturationThr = 0.5;
        float saturationExpansion = 20;

        // image metadata
        int width = _image.getWidth();
        int height = _image.getHeight();
        float pixelCount = (float)width*height;

        // work bitmap and others
        typedef struct {
            float r; // red ALL 0 to 1
            float g; // green
            float b; // blue
            float s; // saturation
            float br; // brightness
        } myPixel;
        std::vector<std::vector<myPixel>> myBitmap;
        std::vector<std::vector<bool>> saturationMask;
        std::vector<std::vector<char>> bleededSaturation;
        myBitmap.resize(width);
        saturationMask.resize(width);
        bleededSaturation.resize(width);
        for (int i = 0; i < width; ++i)
        {
            myBitmap[i].resize(height);
            saturationMask[i].resize(height);
            bleededSaturation[i].resize(height);
        }

        // replicating to a manageable bitmap
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                juce::Colour pixel = _image.getPixelAt(i, j);
                myBitmap[i][j].r = pixel.getFloatRed();
                myBitmap[i][j].g = pixel.getFloatGreen();
                myBitmap[i][j].b = pixel.getFloatBlue();
                myBitmap[i][j].s = pixel.getSaturation();
                myBitmap[i][j].br = pixel.getBrightness();
                saturationMask[i][j] = myBitmap[i][j].s > saturationThr;
            }
        }

        // saturation related things
        for (int i = saturationExpansion; i < width-saturationExpansion; i++) {
            for (int j = saturationExpansion; j < height-saturationExpansion; j++) {
                if (saturationMask[i][j]) {
                    // understand which color component is bleeding
                    char bleedingColor = 0;
                    if (myBitmap[i][j].r > myBitmap[i][j].b && myBitmap[i][j].r > myBitmap[i][j].g) {
                        bleedingColor = 'r';
                    } else if (myBitmap[i][j].b > myBitmap[i][j].r && myBitmap[i][j].b > myBitmap[i][j].g) {
                        bleedingColor = 'b';
                    } else {
                        bleedingColor = 'g';
                    }
                    for (int _i = i - saturationExpansion; _i < i + saturationExpansion; _i++) {
                        for (int _j = j - saturationExpansion; _j < j + saturationExpansion; _j++) {
                            bleededSaturation[_i][_j] = bleedingColor;
                        }
                    }
                }
            }
        }

        // color specific, brightness and crunchiness
        for (int i = 0; i < width; i++) {
            for (int j = 0; j < height; j++) {
                avgSlinkiness += (bleededSaturation[i][j] > 0) ? 1 : 0; // later to be divided by pixelcount
                if (bleededSaturation[i][j] == 'r') {
                    avgBleededRedness += 1; // later to be divided by pixelcount
                } else if (bleededSaturation[i][j] == 'g') {
                    avgBleededGreeness += 1; // later to be divided by pixelcount
                } else if (bleededSaturation[i][j] == 'b') {
                    avgBleededBlueness += 1; // later to be divided by pixelcount
                }
                avgBrightness += myBitmap[i][j].br; // later to be divided by pixelCount
                if (i > 0 && i < width - 1 && j > 0 && j < height - 1) {
                    float cr = 0;
                    cr += abs(myBitmap[i][j].br - myBitmap[i-1][j].br);
                    cr += abs(myBitmap[i][j].br - myBitmap[i+1][j].br);
                    cr += abs(myBitmap[i][j].br - myBitmap[i][j-1].br);
                    cr += abs(myBitmap[i][j].br - myBitmap[i][j+1].br);
                    avgCrunchiness += cr / 4; // later to be divided by almost pixelCount
                }
            }
        }

        avgBleededRedness /= pixelCount;
        avgBleededGreeness /= pixelCount;
        avgBleededBlueness /= pixelCount;
        avgSlinkiness /= pixelCount;
        avgCrunchiness /= (width-2)*(height-2);
        avgBrightness /= pixelCount;
        ourImage = std::make_shared<juce::Image>(_image);

        auto message1 = juce::MidiMessage::noteOn(1, 1, avgBleededRedness);
        auto message2 = juce::MidiMessage::noteOn(1, 2, avgBleededGreeness);
        auto message3 = juce::MidiMessage::noteOn(1, 3, avgBleededBlueness);
        auto message4 = juce::MidiMessage::noteOn(1, 4, avgSlinkiness);
        auto message5 = juce::MidiMessage::noteOn(1, 5, avgCrunchiness);
        auto message6 = juce::MidiMessage::noteOn(1, 6, avgBrightness);
        midiList.clearQuick();
        midiList.add(message1);
        midiList.add(message2);
        midiList.add(message3);
        midiList.add(message4);
        midiList.add(message5);
        midiList.add(message6);
    };

private:
    AudioFft audioFft;
    double samplerate;
    void addMessageToList (const juce::MidiMessage& message);
    juce::Array<juce::MidiMessage> midiList;
    //==============================================================================
    JUCE_DECLARE_NON_COPYABLE_WITH_LEAK_DETECTOR (SpisGirlsAudioProcessor)
};
