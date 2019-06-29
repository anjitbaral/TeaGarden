require_relative 'product'

class Tea
	include Product
	attr_reader :name
	attr_accessor :price

	def initialize( name, price )
		super()
		@name = name
		@price = price
	end


	def price=(new_price)
		@address = new_price
		notify_observers
	end

end
