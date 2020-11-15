# 3.times do 
# 	puts "Runing Blocks!"
# end

# def run_my_block
# 	puts "Starting Method...."
# 	yield
# 	puts "Back in Method...."
# end


# run_my_block do 
# 	puts "The time is now #{Time.now}"
# end

# def roll
# 	puts "Starting Method...."
# 	number = rand(1..6)
# 	# yield if block_given?
# 	yield "Mahi", number
# 	puts "Back in Method...."
# end

# def roll
# 	puts "Starting Method...."
# 	number = rand(1..6)
# 	yield "Mahi", number
#     yield "Moe", number
# 	puts "Back in Method...."
# end


# roll  do |name, number|
#  	puts "#{name} rolled a number #{number}!"
#  end

def roll
	number = rand(1..6)
	result = yield("Mahi", number)
	puts "The block returned #{result}"
end


roll  do |name, number|
 	puts "#{name} rolled a number #{number}!"
 	number * 2
 	puts "Hello"
 end