#one to represent a product to be purchased 
#Each product has a name, base price, and tax rate. 
#There should also be a method to calculate and return the product's total price 
#based on the base price and tax rate.

class Product
	def initialize (name, base_price, tax_rate)
		@name = name 
		@base_price = base_price
		@tax_rate = tax_rate 

	end 
	
	def calculator 
		price = @base_price
		tax_amount = @tax_rate * @base_price
		total = price + tax_amount
		return total

	end

end 



#testing methodology 
#assign 2 products to these variables 
product1 = Product.new("product1", 50, 0.13)
product2 = Product.new("product2", 500, 0.15)

#inspect them 
puts product1.inspect
puts product2.inspect

#calculate out the door price for any given variable-product
puts product1.calculator.inspect