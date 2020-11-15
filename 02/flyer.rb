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

flayers = []
# 1.upto(5) do |n|
# 	flayers << Flyer.new("Flyer#{n}", "Flyer#{n}@example.com", n * 1000)
# end
1.upto(5) { |n| flayers << Flyer.new("Flyer#{n}", "Flyer#{n}@example.com", n * 1000) }


puts flayers


