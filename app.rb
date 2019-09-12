require_relative 'lib/cart'

cart_items = [
  {name: 'Aspirina', quantity: 2},
  {name: 'Enxaq', quantity: 2},
  {name: 'Engov', quantity: 2},
  {name: 'Doril', quantity: 1},
  {name: 'Viagra', quantity: 1}
]

cart = Cart.new(cart_items)

puts "Meu Carrinho"

cart_items.each do |item|
  puts "#{item[:quantity]} - #{item[:name]}"
end

puts "Total: #{cart.total}"
