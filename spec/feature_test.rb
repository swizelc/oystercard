# feature test to check the top_up method functionality
require_relative '../lib/oystercard'

card = Oystercard.new

puts card.balance


card.top_up(10)


puts card.balance
