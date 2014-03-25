
require './lib/pig_latin.rb'
include PigLatin

describe PigLatin do

  describe 'pig_latin' do
    it 'detects if first letter is y and returns correct response' do
      result = pig_latin('yellow')
      expect(result).to eq 'ellowyay'
    end
  end
end
