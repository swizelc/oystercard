# eature test for funtionality of touch_in method
# not allowing a card user itno the transport if the balance is less than
# minimum cap
require_relative '../lib/oystercard'

card = Oystercard.new
# expecting an error message as it is below minimum cap
card.touch_in
