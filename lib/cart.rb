require_relative './discount_calculator'

class Cart
  MEDICINE_VALUE = 8.0

  def initialize(cart_items)
    @cart_items = cart_items
  end

  def total
    DiscountCalculator.calculate!(cart_items)
  end

  private
  
  attr_reader :cart_items
end
