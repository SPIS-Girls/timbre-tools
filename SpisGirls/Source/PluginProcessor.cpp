/*
  ==============================================================================

    This file contains the basic framework code for a JUCE plugin processor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"

//==============================================================================
SpisGirlsAudioProcessor::SpisGirlsAudioProcessor()
#ifndef JucePlugin_PreferredChannelConfigurations
     : AudioProcessor (BusesProperties()
                     #if ! JucePlugin_IsMidiEffect
                      #if ! JucePlugin_IsSynth
                       .withInput  ("Input",  juce::AudioChannelSet::stereo(), true)
                      #endif
                       .withOutput ("Output", juce::AudioChannelSet::stereo(), true)
                     #endif
                       )
#endif
{

}

SpisGirlsAudioProcessor::~SpisGirlsAudioProcessor()
{
}

//==============================================================================
const juce::String SpisGirlsAudioProcessor::getName() const
{
    return JucePlugin_Name;
}

bool SpisGirlsAudioProcessor::acceptsMidi() const
{
   #if JucePlugin_WantsMidiInput
    return true;
   #else
    return false;
   #endif
}

bool SpisGirlsAudioProcessor::producesMidi() const
{
   #if JucePlugin_ProducesMidiOutput
    return true;
   #else
    return false;
   #endif
}

bool SpisGirlsAudioProcessor::isMidiEffect() const
{
   #if JucePlugin_IsMidiEffect
    return true;
   #else
    return false;
   #endif
}

double SpisGirlsAudioProcessor::getTailLengthSeconds() const
{
    return 0.0;
}

int SpisGirlsAudioProcessor::getNumPrograms()
{
    return 1;   // NB: some hosts don't cope very well if you tell them there are 0 programs,
                // so this should be at least 1, even if you're not really implementing programs.
}

int SpisGirlsAudioProcessor::getCurrentProgram()
{
    return 0;
}

void SpisGirlsAudioProcessor::setCurrentProgram (int index)
{
}

const juce::String SpisGirlsAudioProcessor::getProgramName (int index)
{
    return {};
}

void SpisGirlsAudioProcessor::changeProgramName (int index, const juce::String& newName)
{
}

//==============================================================================
void SpisGirlsAudioProcessor::prepareToPlay (double sampleRate, int samplesPerBlock)
{
    // Use this method as the place to do any pre-playback
    // initialisation that you need..
    this->samplerate = sampleRate;
    juce::StringArray cameraList = juce::CameraDevice::getAvailableDevices();

    if (cameraList.size() > 0) {
        cameraList.strings.getFirst();
        camera = std::unique_ptr<juce::CameraDevice>(juce::CameraDevice::openDevice(cameraList.size()-1));
    }
    else {
        // throw big error
        // and quit everything
    }
    startTimerHz(5);
    audioImageMagic.initialize(sampleRate, N);
}

void SpisGirlsAudioProcessor::releaseResources()
{
    // When playback stops, you can use this as an opportunity to free up any
    // spare memory, etc.
}

#ifndef JucePlugin_PreferredChannelConfigurations
bool SpisGirlsAudioProcessor::isBusesLayoutSupported (const BusesLayout& layouts) const
{
  #if JucePlugin_IsMidiEffect
    juce::ignoreUnused (layouts);
    return true;
  #else
    // This is the place where you check if the layout is supported.
    // In this template code we only support mono or stereo.
    // Some plugin hosts, such as certain GarageBand versions, will only
    // load plugins that support stereo bus layouts.
    if (layouts.getMainOutputChannelSet() != juce::AudioChannelSet::mono()
     && layouts.getMainOutputChannelSet() != juce::AudioChannelSet::stereo())
        return false;

    // This checks if the input layout matches the output layout
   #if ! JucePlugin_IsSynth
    if (layouts.getMainOutputChannelSet() != layouts.getMainInputChannelSet())
        return false;
   #endif

    return true;
  #endif
}
#endif

void SpisGirlsAudioProcessor::processBlock (juce::AudioBuffer<float>& buffer, juce::MidiBuffer& midiBuffer)
{
    juce::ScopedNoDenormals noDenormals;
    auto totalNumInputChannels  = getTotalNumInputChannels();
    auto totalNumOutputChannels = getTotalNumOutputChannels();
    
    for (int i = 0; i < midiList.size(); i++)
    {
        auto message = midiList[i];
        auto timestamp = midiList[0].getTimeStamp();
        auto sampleNumber =  (int) (timestamp * samplerate);
        midiBuffer.addEvent (message, sampleNumber);
    }

    // In case we have more outputs than inputs, this code clears any output
    // channels that didn't contain input data, (because these aren't
    // guaranteed to be empty - they may contain garbage).
    // This is here to avoid people getting screaming feedback
    // when they first compile a plugin, but obviously you don't need to keep
    // this code if your algorithm always overwrites all the output channels.
    for (auto i = totalNumInputChannels; i < totalNumOutputChannels; ++i)
        buffer.clear (i, 0, buffer.getNumSamples());

    // This is the place where you'd normally do the guts of your plugin's
    // audio processing...
    // Make sure to reset the state if your inner loop is processing
    // the samples and the outer loop is handling the channels.

    // Alternatively, you can process the samples with the channels
    // interleaved by keeping the same state.
    for (int channel = 0; channel < totalNumInputChannels; ++channel)
    {
        auto* channelData = buffer.getWritePointer (channel);
        auto* audioIn = buffer.getReadPointer(channel);
        
        for (auto i = 0; i < buffer.getNumSamples(); i++)
        {
            audioImageMagic.processSample(audioIn[i], channelData, i, buffer.getNumSamples());
        }
    }
}

//==============================================================================
bool SpisGirlsAudioProcessor::hasEditor() const
{
    return true; // (change this to false if you choose to not supply an editor)
}

juce::AudioProcessorEditor* SpisGirlsAudioProcessor::createEditor()
{
    return new SpisGirlsAudioProcessorEditor (*this);
}

//==============================================================================
void SpisGirlsAudioProcessor::getStateInformation (juce::MemoryBlock& destData)
{
    // You should use this method to store your parameters in the memory block.
    // You could do that either as raw data, or use the XML or ValueTree classes
    // as intermediaries to make it easy to save and load complex data.
}

void SpisGirlsAudioProcessor::setStateInformation (const void* data, int sizeInBytes)
{
    // You should use this method to restore your parameters from this memory block,
    // whose contents will have been created by the getStateInformation() call.
}

//==============================================================================
// This creates new instances of the plugin..
juce::AudioProcessor* JUCE_CALLTYPE createPluginFilter()
{
    return new SpisGirlsAudioProcessor();
}

void SpisGirlsAudioProcessor::timerCallback()
{
    camera->takeStillPicture(procImage);
}
