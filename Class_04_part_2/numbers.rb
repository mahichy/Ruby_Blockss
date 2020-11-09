numbers = [ 1, 2, 3, 4]

# result = numbers.reduce(0) { |sum, number| sum + number }
result = numbers.reduce(:+)
puts result

numbers = [2, 4, 6]

res = numbers.reduce { |sum, number| sum + number }
puts res
