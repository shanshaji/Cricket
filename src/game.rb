require_relative "./cricketer.rb"
require_relative "./umpire.rb"
class Game
	attr_accessor :batsman, :bowler, :runs_required, :overs
	def initialize
		@batsman = Cricketer.new("shan").bat(select_batsman_type)
		@bowler = Cricketer.new("ram").bowl(select_bowler_type)
		@runs_required = runs_required_to_win
		@overs = overs_in_game
	end

	def play_over
		(0..no_of_balls).each do |ball|
			bowler.bowl(batsman)
			Umpire.new.decide(batsman, bowler, ball,no_of_balls, runs_required)
		end
	end

	private

	def runs_required_to_win
		puts "please enter runs needed to win"
		@runs_required = gets.chomp.to_i
	end

	def overs_in_game
		puts "please enter number of overs"
		@overs = gets.chomp.to_i
	end

	def select_batsman_type
		puts "please enter batsman type: Normal, Hitter, Defensive, Tail"
		gets.chomp
	end

	def select_bowler_type
		puts "please enter bowler type: Normal, Part Time"
		gets.chomp
	end

	def no_of_balls
		(overs * 6) - 1
	end
end
game = Game.new
game.play_over