require './lib/builder'
require 'rspec'
Dir['./lib/calcs/*.rb'].sort.each { |file| require file }

describe Builder do
  subject do
    Builder.build(source, target)
  end
  context 'when the source is F' do
    let(:source) { 'F' }
    context 'when the target is C' do
      let(:target) { 'C' }
      it { expect(subject.calc(100)).to eq(37) }
    end
    context 'when the target is K' do
      let(:target) { 'K' }
      it { expect(subject.calc(104)).to eq(313) }
    end
  end
  context 'when the source is K' do
    let(:source) { 'K' }
    context 'when the target is C' do
      let(:target) { 'C' }
      it { expect(subject.calc(100)).to eq(-173) }
    end
    context 'when the target is F' do
      let(:target) { 'F' }
      it { expect(subject.calc(104)).to eq(-272.2) }
    end
  end
  context 'when the source is C' do
    let(:source) { 'C' }
    context 'when the target is F' do
      let(:target) { 'F' }
      it { expect(subject.calc(100)).to eq(212) }
    end
    context 'when the target is K' do
      let(:target) { 'K' }
      it { expect(subject.calc(104)).to eq(377) }
    end
  end
end
