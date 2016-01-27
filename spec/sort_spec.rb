require 'rspec'
require 'pry-byebug'
require_relative '../src/char_sort'

RSpec.describe 'CharSort' do
  describe '::sort_string' do
    it 'accepts a string' do
      expect { CharSort.sort_string('hahaha') }.not_to raise_error
    end

    it 'returns a string' do
      expect(CharSort.sort_string('hahaha').class).to eq(String)
    end

    it 'returns a string with characters alphabetically sorted' do
      expect(CharSort.sort_string('cabd')).to eq('abcd')
      expect(CharSort.sort_string('egfh')).to eq('efgh')
    end
  end

  describe '::count_character' do
    it 'returns a hash with the character counts' do
      expect(CharSort.count_character('aaabb'))
        .to eq(
          {
            'a' => 3,
            'b' => 2
          }
        )
    end
  end
end
