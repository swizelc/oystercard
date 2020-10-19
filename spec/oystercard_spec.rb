require 'oystercard'
describe Osytercard do
  it { is_expected.to respond_to(:balance) }

  describe '.balance' do
    it 'returns the balance of the card' do
      expect(subject.balance).to eq 0
    end
  end

end
