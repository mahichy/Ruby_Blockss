class Phone
	attr_accessor :airplane_mode

	def initialize
		@airplane_mode = false
	end

	def text(message)
		if @airplane_mode 
			puts "Saved text: #{message}"
		else
			puts "Send text: #{message}"
		end
	end

	# def in_airplane_mode
	# 	@airplane_mode = true
	# 	yield
	# rescue Exception => e
	# 	puts e.message
	# ensure
	# 	@airplane_mode = false
	# 	puts " Mode is now #{@airplane_mode}"
	# end

	def in_airplane_mode
		@airplane_mode = true
		yield
	rescue Exception => e
		puts e.message
	ensure
		@airplane_mode = false
		puts " Mode is now #{@airplane_mode}"
	end
end

phone = Phone.new


phone.in_airplane_mode do 
	phone.text("Just took off!")
	phone.text("At 30,000 ft!")
	# phone.call
	# phone.email
	raise "Whoops!"
end

phone.text("Just Landed! ")

# phone.airplane_mode = true
# phone.text("Just took off!")
# phone.text("At 3000 ft")
# phone.airplane_mode = false
# phone.text("Just Landed! ")

