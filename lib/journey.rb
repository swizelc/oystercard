class Journey
  MIN_FARE = 1
  PENALTY_FARE = 6
  attr_reader :entry_station, :exit_station
  def initialize(entry=nil, exit=nil)
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
    return MIN_FARE if @entry_station.zone == @exit_station.zone
    return (@exit_station.zone - @entry_station.zone + 1)
  end
end
