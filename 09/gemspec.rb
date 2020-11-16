# spec = Gem::Specification.new do |s|
# 	s.name = 'my_gem'
# 	s.version = '2.0.0'
# 	s.summary = 'This is cool gem!'
# end

# puts spec

module Jem
	class Specification
		attr_accessor :name, :version, :summary

		def initialize
			@version = '1.0.0'
			#default initialization 
			yield(self) if block_given?
		end
	end
end


spec = Jem::Specification.new do |s|
	s.name = 'my_gem'
	s.version = '2.0.0'
	s.summary = 'This is cool gem!'
end

# spec = Jem::Specification.new
# spec.name = "Mike"
p spec