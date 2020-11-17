require './lib/matstat'
require 'rspec'

describe Matstat do
  subject do
    arr = [[1], [2], [3], [4], [5]]
    Matstat.new(arr)
  end

  describe '#max' do
    it { expect(subject.max).to eq(5) }
  end

  describe '#min' do
    it { expect(subject.min).to eq(1) }
  end

  describe '#average' do
    it { expect(subject.average).to eq(3) }
  end

  describe '#dispersion' do
    it { expect(subject.dispersion).to eq(2.5) }
  end
end
