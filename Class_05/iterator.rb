# 3.times do 
# 	puts "Ho"
# end

# def three_times
# 	yield
# 	yield
# 	yield
# end

# three_times do
# 	puts "Ho"
# 	end

# def three_times
# 	# number = rand(1..3)
# 	yield(1)
# 	yield(2)
# 	yield(3) 
	
# end

# three_times do |number|
#   puts "#{number} situp"
#   puts "#{number} pushup"
#   puts "#{number} chinup"
# end

def three_times
	1.upto(3) do |c|
		yield(c)
	end
end

three_times do |number|
  puts "#{number} situp"
  puts "#{number} pushup"
  puts "#{number} chinup"
end