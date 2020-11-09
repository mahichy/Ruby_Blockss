scores = [83, 71, 92, 64, 98, 87, 75, 69]
puts "high_scores:"
high_scores = scores.select {|s| s > 80 }
p high_scores
puts "low_scores:"
low_scores = scores.reject {|s| s > 80 }
p low_scores

puts "Use_any:"
puts scores.any? { |s| s < 70 }

puts "Use_detect:"
puts scores.detect { |s| s < 70 }

scores.select! { |score| score > 70 }
p scores
scores.reject! { |score| score > 70 }
p scores
