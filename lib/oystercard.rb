class Oystercard
  attr_reader :balance

  def initialize(balance = 0)
    @balance = balance
  end

  def top_up(amount)
    fail "Can't exceed limit of £90" if (@balance + amount) > 90
    @balance += amount
  end

end
