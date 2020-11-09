class Flyer
  attr_reader :name, :email, :miles_flown
  attr_accessor :status

  def initialize(name, email, miles_flown, status=:bronze)
    @name = name
    @email = email
    @miles_flown = miles_flown
    @status = status
  end

  def to_s
    "#{name} (#{email}): #{miles_flown} - #{status}"
  end
end

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

flyers = []
flyers << Flyer.new("Larry", "larry@example.com", 4000, :platinum)
flyers << Flyer.new("Moe", "moe@example.com", 1000)
flyers << Flyer.new("Curly", "curly@example.com", 3000, :gold)
flyers << Flyer.new("Shemp", "shemp@example.com", 2000)

frequent_flyers = flyers.select {|f| f.miles_flown >= 3000}
puts frequent_flyers 

puts "infrequent_flyers:"
infrequent_flyers = flyers.reject {|f| f.miles_flown >= 3000}
puts infrequent_flyers

puts flyers.any? { |f|  f.status == :platinum}

puts "first_bronze_flyer"
first_bronze_flyer = flyers.detect { |f| f.status == :bronze }
puts first_bronze_flyer

# Exercises
platinum_flyers, other_flyers = flyers.partition { |f| f.status == :platinum }
puts "platinum_flyers:"
puts platinum_flyers

puts "other_flyers:"
puts other_flyers

name_tags = flyers.map { |flyer| "#{flyer.name} (#{flyer.status.upcase})"}
puts name_tags

total_in_kms = flyers.map { |f| f.miles_flown * 1.6  }
puts total_in_kms

total_miles_flown = flyers.reduce(0) { |sum, flyer| sum + flyer.miles_flown}
puts "Total_miles_flown:"
puts total_miles_flown

total_km_flown = flyers.reduce(0) { |sum, flyer| sum + (flyer.miles_flown * 1.6)}
puts "Total_Km_Flown: "
puts total_km_flown