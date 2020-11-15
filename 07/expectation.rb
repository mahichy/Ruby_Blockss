
def with_expectation(expected_value)
	puts "Runing test..."
	result = yield
	if result == expected_value
		puts "Passed"
	else
		puts "Filed"
		puts " Expected #{expected_value}, but got #{result}"
	end
end


with_expectation(4) { 2 + 2 }
with_expectation(5) { 2 + 2 }

def with_auditing(expected_value)
  puts "Running audit..."
  result = yield
  if result == expected_value
    puts "Complete."
  else
    puts "Incomplete: #{result}."
  end
end

with_auditing(5) { 2 + 3}
with_auditing(5) { 3 + 3}

