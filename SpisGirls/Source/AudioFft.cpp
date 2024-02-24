/*
  ==============================================================================

    AudioFft.cpp
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#include "AudioFft.h"

AudioFft::AudioFft() : hann(1024, juce::dsp::WindowingFunction<float>::WindowingMethod::hann), forwardFFT(1024)
{
}

void AudioFft::initialize(float samplerate, int fftSize)
{
    windowSize = fftSize;
    this->fftSize = fftSize * 2; // times 2, to to store complex and real part
    fftData.clear();
    window.clear();
    // Filling fftData with 0s, because usage of std::copy later, not sure if needed though
    for(int i = 0; i < this->fftSize; ++i)
    {
        fftData.add(0);
    }
    hann.fillWindowingTables(windowSize, juce::dsp::WindowingFunction<float>::WindowingMethod::hann);
    forwardFFT = juce::dsp::FFT(log2(fftSize));
};

void AudioFft::processSample(float sample, float * writeBuffer, int pos, int numSamples)
{
    window.set(windowIdx, sample);
    windowIdx++;
    if (windowIdx == windowSize)
    {
        std::fill (fftData.begin(), fftData.end(), 0.0f);
        std::copy (window.begin(), window.end(), fftData.begin());
        hann.multiplyWithWindowingTable(fftData.begin(), windowSize);
        windowIdx = 0;
        performFFT();
        for (int i = 0; i < windowSize; ++i) {
            writeBuffer[pos] = fftData[i];
            pos = (pos + 1) % numSamples; // Wrap pos to start if it reaches the end of the buffer
        }
    }
};

void AudioFft::performFFT()
{
    forwardFFT.performRealOnlyForwardTransform(fftData.data());
    bool found = false;
      for (int i = 0; i < windowSize; i++)
      {
          auto real = fftData[i*2];
          auto imag = fftData[i*2+1];
          if (i > 0 && real > 6 && !found)
          {
              int k = i * 2;
              int mult = 1;
              found = true;
              while (k < windowSize)
              {
                  fftData.set(k*2, real * 4);
                  fftData.set(k*2 + 1, imag * 4);
                  k = i * mult;
                  mult++;
              }
          }
      }
    
    forwardFFT.performRealOnlyInverseTransform(fftData.data());
}
