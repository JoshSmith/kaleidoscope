require 'spec_helper'

describe Kaleidoscope::Configuration do
  context 'when no colors are specified' do
    before do
      Kaleidoscope.configure do |config|
      end
    end

    it 'has no colors' do
      colors = Kaleidoscope.configuration.colors
      colors.should be_nil
    end
  end

  context 'when colors are specified inside a configuration block' do
    before do
      Kaleidoscope.configure do |config|
        config.colors = ["#FFFFFF"]
      end
    end

    it 'sets the colors' do
      Kaleidoscope.configuration.colors.should eq ["#FFFFFF"]
    end
  end

  context 'when colors are specified outside a configuration block' do
    it 'sets the colors' do
      Kaleidoscope.configuration.colors = ["#FFFFFF"]
      Kaleidoscope.configuration.colors.should eq ["#FFFFFF"]
    end
  end

  context 'when number of colors are specified inside a configuration block' do
    before do
      Kaleidoscope.configure do |config|
        config.number_of_colors = 5
      end
    end

    it 'sets the number of colors' do
      Kaleidoscope.configuration.number_of_colors.should be 5
    end
  end
end