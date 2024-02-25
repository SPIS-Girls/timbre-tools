/*
  ==============================================================================

    AudioFft.h
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#pragma once

#include <JuceHeader.h>
#include "../../dj_fft/dj_fft.h"

class AudioImageMagic
{
public:
    AudioImageMagic(int N, std::vector<std::complex<float>>* imageFft);
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
    std::vector<std::complex<float>>* imageFft;
    std::vector<std::complex<float>> audioFft;
    std::vector<std::complex<float>> timeDomain2D;
    std::vector<std::complex<float>> convoFft;

    int N = 256;
    
    void performFFT();
};
