#one to represent a shopping cart containing a collection of products.
#add a product to the car
#remove an product from the cart
#add up the total cost of all products in the cart before tax
#add up the total cost of all products in the cart after tax
require_relative ('dreaded-capitalism-product-class.rb')

class Shoppingcart
	def initialize(cart_owner_id)
		@cart_owner_id = cart_owner_id

	end 
end


#testing
#assign variable to a shopping cart instance
cart1 = Shoppingcart.new(666)
#inspect the created cart
puts cart1.inspect