require 'spec_helper'
require 'kibo'

describe 'Kibo' do
  context 'bsearch' do
    it 'should look for an element' do
      a = (1..1000).to_a
      expect(Kibo::Search.bsearch(a, rand(1..1000))).to eq true
    end

    it 'should take less that 0.0 seconds' do
      start = Time.now
      a = (1..1000).to_a
      Kibo::Search.bsearch(a, rand(1..1000))
      finish = Time.now
      total_time = (start - finish) * 1000
      expect(total_time).to be < 0.0
    end

  end
end