require 'spec_helper'
require './lib/geography_helper/countries'

describe GeographyHelper::Countries do

  let(:countries) { GeographyHelper::Countries.new }

  describe '#countries' do

    it 'returns a countries hash' do
      expect(countries.countries).to be_a Hash
    end

    it 'returns the full country name from a hashed key' do
      expect(countries.countries['US']).to eq 'United States'
    end
  end
end
