class Umpire

	def decide(batsman, bowler, ball, no_of_balls, runs_required)
		decision = ""
		is_out?(batsman, bowler, ball)
		is_batsman_won?(batsman, bowler, runs_required)
		is_batsman_lost?(batsman, bowler, ball, no_of_balls)
	end

	private

	def is_out?(batsman, bowler, ball)
		if is_a_tail_ender_batsman_out?(batsman, bowler, ball) || batsman.runs_earned[ball] == bowler.runs_earned[ball]
			if is_a_part_time_bowler?(bowler)
				batsman.runs_earned.pop
			else
				decision = "Batsman is Out"
				result(batsman.runs_earned,bowler.runs_earned, decision)
				exit
			end
		end
	end

	def is_a_part_time_bowler?(bowler)
		bowler.bowler_type === "part_time"
	end

	def is_a_tail_ender_batsman_out?(batsman, bowler, ball)
		batsman.type === "tail_ender" && batsman.runs_earned[ball].to_i % 2 == bowler.runs_earned[ball] % 2
	end

	def is_batsman_won?(batsman, bowler, runs_required)
		if batsman.runs_earned.sum >= runs_required
			decision = "Batman has won"
			result(batsman.runs_earned,bowler.runs_earned, decision)
			exit
		end
	end

	def is_batsman_lost?(batsman, bowler, ball, no_of_balls)
		if ball == no_of_balls
			decision = "Batman has lost"
			result(batsman.runs_earned,bowler.runs_earned, decision)
		end
	end

	def result runs_earned, bowler_runs_earned, decision
		puts "Batsman #{runs_earned} Bowler #{bowler_runs_earned}"
		puts decision
	end

end