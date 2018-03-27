#one to represent a shopping cart containing a collection of products.
#add a product to the cart
#remove an product from the cart
#add up the total cost of all products in the cart before tax
#add up the total cost of all products in the cart after tax
require_relative ('dreaded-capitalism-product-class.rb')


class Shoppingcart

	def initialize(cart_owner_id)
		@cart_owner_id = cart_owner_id
		@cart_contents = []
	end 

	def add_to_cart(product)    
		@cart_contents.push product #pushes each new product put in cart into the class array
		return product
	end

	def cart_checker

		return @cart_contents
	end

	def remove_from_cart(product_name) #iterates through the cart and removes products that match the block variable
 		@cart_contents.each do |product| 
					

			if product.name == product_name #calls on the name reader in the other file 
				@cart_contents.delete(product)
			end
		end 
	end
	 

	def total_costtax 
		cart_total = 0
		@cart_contents.each do |totalprice| #for each of the contents in the cart it adds them to cart total
			cart_total += totalprice.calculator
		end
		return cart_total
	end

	def total_costsanstax
		cart_total = 0
		@cart_contents.each do |totalprice|
		cart_total += totalprice.before_tax_calculator
		end
		return cart_total
	end 
end


#testing
#assign variable to a shopping cart class instance
cart1 = Shoppingcart.new(666)
#inspect the created cart
puts cart1.inspect

product0 = cart1.add_to_cart(Product.new("product0", 50, 0.13))   #create a new cart with the product class from the other file
product1 = cart1.add_to_cart(Product.new("product1", 55, 0.12))
product2 = cart1.add_to_cart(Product.new("product2", 500, 0.013))   
product3 = cart1.add_to_cart(Product.new("product3", 5000, 0.0013))

cart1.remove_from_cart("product0")   
puts ""
puts cart1.inspect





puts
 puts cart1.total_costsanstax
 puts
 puts cart1.total_costtax

puts cart1.inspect

