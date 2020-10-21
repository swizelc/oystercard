require '../lib/oystercard'
require '../lib/station'
require '../lib/journey'
require '../lib/journeylog'

journeylog1 = JourneyLog.new(nil,nil)

puts journeylog1.inspect
puts Journey.journeys
