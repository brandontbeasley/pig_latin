
require './lib/pig_latin.rb'
include PigLatin

describe PigLatin do

  describe 'pig_latin' do
    it 'detects if first letter is y and returns correct response' do
      result = pig_latin('yellow')
      expect(result).to eq 'ellowyay'
    end

    it 'can tell if first letter is a vowel and makes the end way' do
      result = pig_latin('elephant')
      expect(result).to eq 'lephantway'
    end

    it 'works if the first letter is a consonant and 2nd is a vowel' do
      result = pig_latin('love')
      expect(result).to eq 'ovelay'
    end

    it 'works for consonant first & second letter' do
      result = pig_latin('rhythm')
      expect(result).to eq 'ythmrhay'
    end

    it 'works for consonant first/2nd/3rd' do
      result = pig_latin('string')
      expect(result).to eq 'ingstray'
    end
  end
end
