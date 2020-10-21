class JourneyLog

  def initialize(journey_class:)
    @journey_class = journey_class
    @journeys = []
  end

  def start(station)
    journey = @journey_class.new(station)
  end

  def current_journey
  end

  def finish
  end

  def journeys

  end
end
