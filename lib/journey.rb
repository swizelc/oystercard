class Journey
  MIN_FARE = 1
  PENALTY_FARE = 6
  def initialize(entry, exit)
    @entry_station = entry
    @exit_station = exit
  end

  def valid_journey?
    return false if @entry_station == nil
    return false if @exit_station == nil
    true
  end

  def fare
    return PENALTY_FARE unless valid_journey?
    MIN_FARE
  end
end
