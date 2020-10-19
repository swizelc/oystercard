# feature test to check the deduct method functionality
require_relative '../lib/oystercard'

card = Oystercard.new

# expect to get an error message
card.top_up(30)

card.deduct(15)

print card.balance
