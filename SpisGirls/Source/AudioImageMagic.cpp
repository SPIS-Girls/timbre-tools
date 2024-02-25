/*
  ==============================================================================

    AudioFft.cpp
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#include "AudioImageMagic.h"

AudioImageMagic::AudioImageMagic(int N, std::vector<std::complex<float>>* imageFft)
    : N(N), hann(N, juce::dsp::WindowingFunction<float>::WindowingMethod::hann), forwardFFT(N), imageFft(imageFft)
{
    audioFft.resize(N);
    timeDomain2D.resize(N * N);
    convoFft.resize(N * N);
}

void AudioImageMagic::initialize(float samplerate, int fftSize)
{
    windowSize = fftSize;
    this->fftSize = fftSize * 2; // times 2, to to store complex and real part
    fftData.clear();
    window.clear();
    // Filling fftData with 0s, because usage of std::copy later, not sure if needed though
    for (int i = 0; i < this->fftSize; ++i)
    {
        fftData.add(0);
    }
    hann.fillWindowingTables(windowSize, juce::dsp::WindowingFunction<float>::WindowingMethod::hann);
    forwardFFT = juce::dsp::FFT(log2(fftSize));
};

void AudioImageMagic::processSample(float sample, float* writeBuffer, int pos, int numSamples)
{
    window.set(windowIdx, sample);
    windowIdx++;
    if (windowIdx == windowSize)
    {
        std::fill(fftData.begin(), fftData.end(), 0.0f);
        std::copy(window.begin(), window.end(), fftData.begin());
        hann.multiplyWithWindowingTable(fftData.begin(), windowSize);
        windowIdx = 0;
        performFFT();
        for (int i = 0; i < windowSize; ++i)
        {
            writeBuffer[pos] = fftData[i];
            pos = (pos + 1) % numSamples; // Wrap pos to start if it reaches the end of the buffer
        }
    }
};

void AudioImageMagic::performFFT()
{
    forwardFFT.performRealOnlyForwardTransform(fftData.data());

    // 1. MAKE VECTOR OUT OF AUDIO FFT
    for (int i = 0; i < windowSize; i++)
    {
        const auto real = fftData[i * 2];
        const auto img = fftData[i * 2 + 1];
        audioFft[i].real(real);
        audioFft[i].imag(img);
    }

    // 2. MULTIPLY FFT OF IMAGE AND AUDIO
    // convoFft = multiply(imageFft, audioFft);
    convoFft = *imageFft;

    // 3. GO BACK TO TIME-DOMAIN
    timeDomain2D = fft2d(convoFft, dj::fft_dir::DIR_BWD); // time_domain = np.fft.ifft2(fft_convo).real

    // 4. SUM ACROSS COLUMNS
    std::fill(fftData.begin(), fftData.end(), 0.0f);
    auto* data = fftData.data();
    for (auto i = 0; i < N; i++)
    {
        for (auto j = 0; j < N; j++)
        {
            data[i] += timeDomain2D[i * N + j].real(); // result = np.sum(time_domain, axis = 1)
        }
    }

    // 5. NORMALIZE
    const auto range = juce::FloatVectorOperations::findMinAndMax(fftData.data(), fftData.size());
    auto min = range.getStart(); // min = np.min(result)
    auto max = range.getEnd(); // max = np.max(result)
    const auto maxAbs = std::max(abs(min), abs(max));

    juce::FloatVectorOperations::multiply(fftData.data(),
                                          fftData.data(),
                                          1 / maxAbs,
                                          fftData.size()); // result = result / np.max(np.abs(result))


    min = min / maxAbs;
    max = max / maxAbs;

    juce::FloatVectorOperations::add(fftData.data(),
                                     -(min + (max - min) / 2),
                                     fftData.size()); // result = result - (min + (max - min) / 2)


    // 6. MULTIPLY WITH HANNING WINDOW
    hann.multiplyWithWindowingTable(fftData.begin(), windowSize); // result = result * np.hanning(result.shape[0])
}
