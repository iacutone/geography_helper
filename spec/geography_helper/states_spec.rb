require 'spec_helper'
require './lib/geography_helper/states'

describe GeographyHelper::States do

  describe '#states' do
    let(:states) { GeographyHelper::States.new.states }

    it 'returns a hash' do
      expect(states).to be_a Hash
    end

    it 'returns a state value' do
      expect(states['United States']['AK']).to eq 'Alaska'
    end
  end

  describe '#provinces' do
    let(:provinces) { GeographyHelper::States.new.provinces }

    it 'returns a hash' do
      expect(provinces).to be_a Hash
    end

    it 'returns a province value' do
      expect(provinces['Canada']['AB']).to eq 'Alberta'
    end
  end
end
