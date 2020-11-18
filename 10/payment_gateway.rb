class PaymentGateway
	def initialize(user, password)
		@user = user
		@password = password
	end

	def connect
		# Connect to remote service
		puts "Connected at #{@user}."
	end

	def disconnect
		# disconnect from remote service
		puts "Disconnected #{@user}"
	end

	def submit(type, amount)
		# Submit request to remote service
		puts "Submited #{type} for #{amount}"
	end

	# def open_gateway(user, password)
	# 	gateway = PaymentGateway.new(user, password)
	# 	gateway.connect
	# 	yield(gateway)
	# 	gateway.disconnect
	# end

	def self.open(user, password)
		gateway = self.new(user, password)
		gateway.connect

		return gateway unless block_given?

		begin
			yield(gateway) 
		rescue Exception => e
		 puts e.message	
		 ensure
			gateway.disconnect
		end
	end
end

gateway = PaymentGateway.open("mahi", "secret")
gateway.submit(:void, 15.00)
gateway.disconnect


# def open_gateway(user, password)
# 	gateway = PaymentGateway.new(user, password)
# 	gateway.connect
# 	yield(gateway)
# 	gateway.disconnect
# end

# open_gateway("mahi", "secret") do |gateway|
# 	gateway.submit( :sale, 12.00)
# gateway.submit( :sale, 10.00)
# end

PaymentGateway.open("mahi", "secret") do |gateway|
	gateway.submit( :sale, 12.00)
gateway.submit( :sale, 10.00)
end


# gateway = PaymentGateway.new("mahi", "secret")
# gateway.connect
# gateway.submit( :sale, 12.00)
# gateway.submit( :sale, 10.00)
# gateway.disconnect

# gateway = PaymentGateway.new("mahi", "secret")
# gateway.connect
# gateway.submit( :refund, 5.00)
# gateway.submit( :refund, 20.00)
# gateway.disconnect

PaymentGateway.open("mahi", "secret") do |gateway|
	gateway.submit( :refund, 5.00)
	gateway.submit( :refund, 20.00)
	raise "Problem"
end