require_relative '../../src/game.rb'
require_relative '../../src/cricketer.rb'
require_relative '../../src/umpire.rb'
require_relative "../../src/batsman.rb"
require_relative "../../src/bowler.rb"
require_relative "../../src/run_generator.rb"
require 'pty'
RSpec.describe Game do
    describe 'initialize' do
        context 'initialize a game instance' do
          it 'returns new game instance' do
            game = Game.new
            expect(game.batsman.runs_earned).to be_empty 
            expect(game.bowler.runs_earned).to be_empty 
            expect(game.runs_required).to eql(0)
            expect(game.runs_required).to be_kind_of(Numeric)
            expect(game.overs).to be_kind_of(Numeric)
          end
        end
    end
    # describe 'runs_required_to_win' do
    #   context 'given input paramaters is correct' do
    #     it 'gets input from user' do
    #       game = Game.new
    #       pty = PTY.spawn('game.runs_required_to_win')
    #       stdout, stdin, pid = pty
    #       stdin.puts 1
    #       sleep(0.3)
    #       expect(stdout.readline.chomp).to eq 1
    #     end
    #   end
    # end
    # describe 'play_over' do
    #   context "generate random number for batsman and bowler" do
    #     it 'returns a random number' do
    #       game = Game.new

    #     end
    #   end
    # end
end
        