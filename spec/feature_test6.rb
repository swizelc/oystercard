# feature test to check the top_up method functionality
require_relative '../lib/oystercard'

card = Oystercard.new

# expect to get an error message
card.top_up(100)
