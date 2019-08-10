require_relative "./batsman.rb"
require_relative "./bowler.rb"
class Cricketer
	def initialize(name)
		@name = name
		@player = nil
	end

	def bowl(type)
		@player = Bowler.new(type)
	end

	def bat(type)
		@player = Batsman.new(type)
	end
end