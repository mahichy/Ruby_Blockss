cards = ["Jack", "Queen", "King", "Ace", "Joker"]

# cards.each do |c|
# 	puts c.upcase
# end

# cards.each { |c| puts "#{c.upcase} - #{c.length}" }

# cards.shuffle.each { |c| puts "#{c.upcase} - #{c.length}" }

# cards.reverse_each { |c| puts "#{c.upcase} - #{c.length}" }

scores = {"Larry" => 10, "Moe" => 8, "Curly" => 12}

scores.each do |name, score|
	puts "#{name} scored a #{score}!"
end

flavors = ['chocolate', 'vanilla', 'cinnamon']

flavors.each do |type|
  puts type.reverse
end

desserts = { "chocolate" => 1.00, "vanilla" => 0.75, "cinnamon" => 1.25 }

desserts.each do |flavor, price|
	puts "$#{price * 2} for a cup of #{flavor}"
end



