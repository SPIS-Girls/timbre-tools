/*
  ==============================================================================

    AudioFft.h
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#pragma once

#include <JuceHeader.h>

class AudioFft
{
public:
    AudioFft();
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
    
    void performFFT();
};
