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
# puts orders

# puts "Big orders:"
# big_orders = orders.select { |o| o.total >= 300 }
# puts big_orders

# puts "Big orders:"
# big_orders = orders.select { |o| puts o.total >= 300 }
# puts big_orders

# puts "Big orders:"
# big_orders = orders.select { |o| puts o.total >= 300 }
# p big_orders

# puts "Big orders:"
# puts orders.select { |o| o.total >= 300 }


# puts "____"
# puts orders

# puts "Small orders:"
# Small_Orders = orders.reject { |o| o.total >= 300 }
# puts Small_Orders

# puts "Pending Orders:"
# Pending_orders = orders.any? { |o| o.status == :pending}
# puts Pending_orders
# order = orders.detect { |o| o.status == :pending }
# puts order


# results = orders.partition { |o| o.status == :pending}
# p results

pending_orders, completing_orders = orders.partition { |o| o.status == :pending}

puts "Pending:"
puts pending_orders

puts "Completed:"
puts completing_orders

big_orders, small_Orders = orders.partition { |o| o.total >= 300}
puts "Big:"
puts big_orders
puts "Small:"
puts small_Orders

puts "News Letter Emails:"
# emails = []
# orders.each {|o| emails << o.email.downcase}
# p emails


emails = orders.map { |o| o.email.downcase}
p emails

puts "Taxs:"
# co_orders = orders.select { |o| o.state == "CO"}
# co_taxes = co_orders.map { |o| o.tax }
# p co_taxes

co_taxes  = orders.select { |o| o.state == "CO"}.map { |o| o.tax }
p co_taxes


sum = orders.reduce(0) { |sum, o|	sum + o.total }
puts "Total sales: $#{sum}"

# total_tax = orders.reduce(0) { |total, order| total + order.tax}
total_tax = orders.map { |o| o.tax}.reduce(:+)
puts "total_tax: $#{total_tax}"
