/*
  ==============================================================================

    AudioFft.h
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#pragma once

#include <JuceHeader.h>

class AudioImageMagic
{
public:
    AudioImageMagic(int N);
    void initialize(float samplerate, int fftSize);
    void processSample(float sample, float * writeBuffer, int pos, int numSamples);
private:
    int windowSize;
    int fftSize;
    juce::Array<float> window;
    int windowIdx = 0;
    juce::Array<float> fftData;
    juce::dsp::WindowingFunction<float> hann;
    juce::dsp::FFT forwardFFT;

    //Image logic
    std::vector<std::complex<float>> imageForFFT;

    int N = 256;
    
    void performFFT();
};
