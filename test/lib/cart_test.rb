require 'minitest/autorun'
require_relative '../../lib/cart'

describe Cart do
  describe '#totalt' do
    it 'returns total' do
      cart_items = [
        {name: 'Amoxilina', quantity: 2},
        {name: 'Aspirina', quantity: 1}
      ]

      cart = Cart.new(cart_items)
      cart.total.must_equal(23.20)
    end
  end
end