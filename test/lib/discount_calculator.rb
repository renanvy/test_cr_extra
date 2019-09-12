require 'minitest/autorun'
require_relative '../../lib/discount_calculator'

describe DiscountCalculator do
  describe '.calculate!' do
    describe 'when the cart has only one product' do
      it 'returns total with 0% discount' do
        cart_items = [
          {name: 'Amoxilina', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(8.0)
      end
    end

    describe 'when the cart has two different products' do
      it 'returns total with 5% discount' do
        cart_items = [
          {name: 'Aspirina', quantity: 1},
          {name: 'Enxaq', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(15.20)
      end
    end

    describe 'when the cart has three different products' do
      it 'returns total with 10% discount' do
        cart_items = [
          {name: 'Aspirina', quantity: 1},
          {name: 'Enxaq', quantity: 1},
          {name: 'Engov', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(21.60)
      end
    end

    describe 'when the cart has four different products' do
      it 'returns total with 20% discount' do
        cart_items = [
          {name: 'Aspirina', quantity: 1},
          {name: 'Enxaq', quantity: 1},
          {name: 'Engov', quantity: 1},
          {name: 'Doril', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(25.60)
      end
    end 

    describe 'when the cart has five or more different products' do
      it 'returns total with 25% discount' do
        cart_items = [
          {name: 'Aspirina', quantity: 1},
          {name: 'Enxaq', quantity: 1},
          {name: 'Engov', quantity: 1},
          {name: 'Doril', quantity: 1},
          {name: 'Viagra', quantity: 1},
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(30.00)
      end
    end

    describe 'when the cart has three different products and one duplicate product' do
      it 'returns total with 10% discount' do
        cart_items = [
          {name: 'Doril', quantity: 2},
          {name: 'Aspirina', quantity: 1},
          {name: 'Enxaq', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(29.60)
      end
    end

    describe 'when the cart has five different products and three duplicate products' do
      it 'returns total with 40% discount' do
        cart_items = [
          {name: 'Aspirina', quantity: 2},
          {name: 'Enxaq', quantity: 2},
          {name: 'Engov', quantity: 2},
          {name: 'Doril', quantity: 1},
          {name: 'Viagra', quantity: 1}
        ]

        DiscountCalculator.calculate!(cart_items).must_equal(51.20)
      end
    end
  end
end