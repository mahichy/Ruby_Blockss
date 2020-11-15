class Order
	TAX_TABLE = { "CO" =>0.02, "MT" => 0.00, "AZ" => 0.04 }
	attr_reader :email, :total, :state, :status

	def initialize(email, state, total,  status=:pending )
		@email = email
		@state = state
		@total = total
		@status = status
	end

	def tax
		total *	TAX_TABLE[state]
		
	end

	def to_s
		"#{email} (#{state}): $#{total} - #{status}"
	end
end

orders = []

orders << Order.new("customer1@example.com", "MT", 300)
orders << Order.new("customer2@example.com", "AZ", 400, :completed)
orders << Order.new("customer3@example.com", "CO", 200)
orders << Order.new("customer4@example.com", "CO", 100, :completed)
puts orders

# puts "Big orders:"
# big_orders = orders.select { |o| o.total >= 300 }
# puts big_orders

# puts "Big orders:"
# big_orders = orders.select { |o| puts o.total >= 300 }
# puts big_orders

# puts "Big orders:"
# big_orders = orders.select { |o| puts o.total >= 300 }
# p big_orders

puts "Big orders:"
puts orders.select { |o| o.total >= 300 }


# puts "____"
# puts orders

puts "Small orders:"
Small_Orders = orders.reject { |o| o.total >= 300 }
puts Small_Orders

puts "Pending Orders:"
Pending_orders = orders.any? { |o| o.status == :pending}
puts Pending_orders
order = orders.detect { |o| o.status == :pending }
puts order