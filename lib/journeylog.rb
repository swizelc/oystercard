require 'journey'
class JourneyLog

  def initialize()
    #@journey_class = journey_class
    @journeys = []
  end

  def start(station)
    journey = Journey.new(station)
    @journeys << journey
  end

  def current_journey
  end

  def finish
  end

  def journeys
    @journeys
  end

  private
  def current_journey
    @current_journey ||= Journey.new
  end
end
