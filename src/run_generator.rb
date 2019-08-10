class RunGenerator
	class << self
    	def generate_runs_for_normal
			rand(0..6)
		end

		def generate_runs_for_tail_ender
			rand(0..6)
		end

		def generate_runs_for_hitter
			[0,4,6].sample
		end

		def generate_runs_for_defensive
			[0,1,2,3].sample
		end
    end
end