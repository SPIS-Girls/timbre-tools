/*
  ==============================================================================

    AudioFft.cpp
    Created: 24 Feb 2024 11:27:48am
    Author:  Levin

  ==============================================================================
*/

#include "AudioImageMagic.h"

AudioImageMagic::AudioImageMagic(int N) : N(N), hann(N, juce::dsp::WindowingFunction<float>::WindowingMethod::hann), forwardFFT(N)
{
}

void AudioImageMagic::initialize(float samplerate, int fftSize)
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

void AudioImageMagic::processSample(float sample, float * writeBuffer, int pos, int numSamples)
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

#define XYtoI(x,y,X) (X*x+y)

void matrixMultiplication(std::vector<std::complex<float>> a, std::vector<std::complex<float>> b, std::vector<std::complex<float>>& c, int M, int N, int L) {
    // A is wide M and tall N
    // B is wide L and tall M
    // therefore
    // C is wide L and tall N
    c.resize(L * N);
    for (int i = 0; i < N; i++) {
        for (int j = 0; j < L; j++) {
            c[XYtoI(i, j, L)] = 0;
            for (int m = 0; m < M; m++) {
                c[XYtoI(i, j, L)] += a[XYtoI(i, m, M)] * b[XYtoI(m, j, L)];
            }
        }

    }
}

void AudioImageMagic::performFFT()
{
    forwardFFT.performRealOnlyForwardTransform(fftData.data());

    // 1. MAKE COLUMN VECTOR OUT OF AUDIO FFT
    // audio_fft = np.fft.fft2(audio_expanded)
    // audio_expanded_fft = np.expand_dims(audio_fft, axis=1)

    // 2. MULTIPLY FFT OF IMAGE AND AUDIO
    // fft_convo = image_fft * audio_expanded_fft # Perform convolution
    // matrixMultiplication(image_fft, audio_expanded_fft, fft_convo, 256, 256, 1);

    // 3. GO BACK TO TIME-DOMAIN
    // time_domain = np.fft.ifft2(fft_convo).real

    // 4. SUM ACROSS COLUMNS
    // result = np.sum(time_domain, axis = 1)

    // 5. NORMALIZE
    // result = result / np.max(np.abs(result))
    // min = np.min(result)
    // max = np.max(result)
    // result = result - (min + (max - min) / 2)

    // 6. MULTIPLY WITH HANNING WINDOW
    // result = result * np.hanning(result.shape[0])


    // ===== probably we do not need that =====
    // forwardFFT.performRealOnlyInverseTransform(fftData.data());
}
