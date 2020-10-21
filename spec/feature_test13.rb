# feature test for funtionality station class
# define zone and name at initialisation
require_relative '../lib/oystercard'

card = Oystercard.new
# expecting an error message as it is below minimum cap
station1 = Station.new("Kings Cross", 1)
