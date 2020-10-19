require 'oystercard'
describe Oystercard do
  it { is_expected.to respond_to(:balance) }
  it { is_expected.to respond_to(:top_up) }

  describe '.balance' do
    it 'returns the balance of the card' do
      expect(subject.balance).to eq 0
    end
  end
  describe "#top_up()" do
    it "adds balance to the card" do
      expect(subject.top_up(5)).to eq 5
    end
  end
end
