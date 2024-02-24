/*
  ==============================================================================

    This file contains the basic framework code for a JUCE plugin editor.

  ==============================================================================
*/

#include "PluginProcessor.h"
#include "PluginEditor.h"

//==============================================================================
SpisGirlsAudioProcessorEditor::SpisGirlsAudioProcessorEditor (SpisGirlsAudioProcessor& p)
    : AudioProcessorEditor (&p), audioProcessor (p)
{
    // Make sure that before the constructor has finished, you've set the
    // editor's size to whatever you need it to be.
    setSize (400, 300);
}

SpisGirlsAudioProcessorEditor::~SpisGirlsAudioProcessorEditor()
{
}

//==============================================================================
void SpisGirlsAudioProcessorEditor::paint (juce::Graphics& g)
{
    // (Our component is opaque, so we must completely fill the background with a solid colour)
    g.fillAll (getLookAndFeel().findColour (juce::ResizableWindow::backgroundColourId));

    g.setColour (juce::Colours::white);
    g.setFont (15.0f);
    g.drawFittedText ("Hello Glorld!", getLocalBounds(), juce::Justification::centred, 1);
    if(audioProcessor.ourImage) g.drawImageAt(*audioProcessor.ourImage, 0, 0);
}

void SpisGirlsAudioProcessorEditor::resized()
{
    // This is generally where you'll want to lay out the positions of any
    // subcomponents in your editor..
}
