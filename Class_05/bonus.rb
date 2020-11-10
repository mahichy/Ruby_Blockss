# def n_times(number)
# 		1.upto(number) do |c|
# 		yield(c)
# 	end
# end

# n_times(5) do |n|
#   puts "#{n} situps"
#   puts "#{n} pushups"
#   puts "#{n} chinups"
# end
def deal(number_of_cards)
  faces = ["Jack", "Queen", "King", "Ace"]
  suits = ["Hearts", "Diamonds", "Spades", "Clubs"]
  if block_given?
    number_of_cards.times do
      random_face = faces.sample
      random_suit = suits.sample
      score = yield random_face, random_suit
      puts "You scored a #{score}!"
    end
  else
    puts "No deal!"
  end
end

deal(10) do |face, suit|
  puts "Dealt a #{face} of #{suit}"
  face.length + suit.length
end


def progress
  0.step(100, 10) do |number|
    yield number
  end
end
progress { |percent| puts percent }


def greet
  yield "Larry", 18
end
greet { |name, age| puts "Hello, #{name}. You don't look #{age}!" }