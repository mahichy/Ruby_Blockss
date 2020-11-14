# start_time = Time.now

# #run some code
# sleep(0.5)

# elapsed_time = Time.now - start_time
# puts "It took #{elapsed_time} seconds"

def time_it(label)
	start_time = Time.now
	yield
	elapsed_time = Time.now - start_time
	puts "#{label} took #{elapsed_time} seconds"
end

time_it("sleepy code")  do
	#run some code
	sleep(0.5)
end

