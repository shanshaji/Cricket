require_relative "./run_generator.rb"
require 'byebug'
class Batsman
	attr_accessor :runs_earned, :type
	BATSMAN_TYPE={"Normal"=> "normal","Hitter"=> "hitter", "Defensive"=> "defensive", "Tail"=> "tail_ender"}
	def initialize(type)
		@runs_earned = []
		@type = BATSMAN_TYPE[type]
	end

	def runs_earned_in_ball(bowler_value)
		runs_scored = RunGenerator.send("generate_runs_for_#{type}")
		@runs_earned.push(runs_scored)
	end
end