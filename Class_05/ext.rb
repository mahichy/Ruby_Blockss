def flavors
  puts "We have the following flavors:"
  yield("Rocky Road", 1.75)
  yield("Vanila", 2.58)
end

flavors do |flavor, cost|
  puts "#{flavor}: $#{cost}"
end

def temperature
  puts "Taking temperature:"
  result = yield("Thursday", 32)
  puts "For our Canadian friends, the temperature in Celsius is #{result}"
end

temperature do |day, temp|
  puts "The day is #{day} and the temperature is #{temp}."
  (temp - 32) * 5 / 9
end