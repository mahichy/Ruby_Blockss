# weekends = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
# weekends.each { |d| puts d}

# class Array
# 	def my_each
# 		i = 0
# 		while i < self.size
# 			yield self[i]
# 			i += 1
# 		end
# 	end
# end
# weekends = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
# weekends.my_each { |d| puts d}

class Array
	def each
		i = 0
		while i < self.size
			yield self[i]
			i += 1
		end
		self
	end
end
weekends = [ 'Monday', 'Tuesday', 'Wednesday', 'Thursday', 'Friday']
puts weekends.each { |d| puts d}.map { |d| d.upcase}