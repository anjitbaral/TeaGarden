require_relative 'tea'

class Displayer
	def initialize(tea)
		tea.add_observer(self)
	end

	def update(tea)
	# callback for observer
		print " tea #{tea.name} has a new price:  #{tea.price}\n"
	end
end


## Driver ###
tea = Tea.new("Jasmine Tea", '5.00')
displayer = Displayer.new(tea)
tea.price = "4.00"
