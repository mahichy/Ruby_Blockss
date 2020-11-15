class Flyer
  attr_reader :name, :email, :miles_flown

  def initialize(name, email, miles_flown)
    @name = name
    @email = email
    @miles_flown = miles_flown
  end

  def to_s
    "#{name} (#{email}): #{miles_flown}"
  end
end

flyers = []
# 1.upto(5) do |n|
# 	flyers << Flyer.new("Flyer#{n}", "Flyer#{n}@example.com", n * 1000)
# end
1.upto(5) { |n| flyers << Flyer.new("Flyer#{n}", "Flyer#{n}@example.com", n * 1000)  }
# puts flyers

flyers.each do |flyer|
  puts "#{flyer.name} - #{flyer.miles_flown} miles"
end

total = 0
# flyers.each do |f|
# 	total += f.miles_flown
# end
flyers.each { |f| total += f.miles_flown }
puts "total miles_flown: #{total}"

promotions = { "United" => 1.5, "Delta" => 2.0, "Lufthansa" => 2.5 }
promotions.each do |airline, multiplier|
	puts "Earn #{multiplier}x miles by flying #{airline} "
end




