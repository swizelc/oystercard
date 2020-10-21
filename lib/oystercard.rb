class Oystercard
  attr_reader :balance, :entry_station, :journey_log

  def initialize(balance = 0)
    @balance = balance
    #@in_journey = false
    @default_min_cap = 1
    @default_max_cap = 90
    @min_fare = 1
    @entry_station = nil
    @journey_log = []
  end

  def top_up(amount)
    fail "Can't exceed limit of £90" if (@balance + amount) > @default_max_cap
    @balance += amount
  end

  def touch_in(station)
    fail "Not enough credit, TOP UP!" if @balance < @default_min_cap
    @entry_station = station
    #@in_journey = true
  end

  def touch_out(station)
    deduct(@min_fare)
    @journey_log << {:entry_station => @entry_station, :exit_station => station}
    @entry_station = nil
    #@in_journey = false
  end

  def in_journey
    return true unless @entry_station == nil
    return false
  end

  private
  def deduct(amount)
    @balance -= amount
  end

end
