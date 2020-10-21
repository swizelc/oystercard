# feature test for funtionality journey class

require_relative '../lib/oystercard'
require_relative '../lib/station'
require_relative '../lib/journey'

card = Oystercard.new
# expecting an error message as it is below minimum cap
station1 = Station.new("Kings Cross", 1)

journey = Journey.new
