require_relative "./run_generator.rb"
class Bowler
	attr_accessor :runs_earned, :bowler_type
	BOWLER_TYPE={"Normal"=> "normal","Part Time"=> "part_time"}
	def initialize(type)
		@runs_earned = []
		@bowler_type = BOWLER_TYPE[type]
	end
	def bowl(batsman)
		bowler_value = RunGenerator.generate_runs_for_normal
		@runs_earned.push(bowler_value)
		batsman.runs_earned_in_ball(bowler_value)
	end
end