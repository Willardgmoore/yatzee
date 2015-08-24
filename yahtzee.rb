require 'pry'

# Yahtzee


# Objective

#   To accumulate the most points by rolling certain combinations of dice that add to your total score.

# Gameplay

#   See rules and gameplay at the following link...
#   http://www.hasbro.com/common/instruct/yahtzee.pdf

# Pseudocode

#   Yahtzee should have several classes:
    
#     Player - 
#       Each instance of a player class will represent each player playing the game.
    
#     ScoreCard -
#       Each instance of ScoreCard will represent the scorecard of a Specific player.

#     Game -
#       Each instance of Game will represent an entire game of yatzee. This class will execute a game, move the players through their turns, and determine when the game is over and who the winner is. 


# ##########

# Suggested Steps:

#     1. roll Method and Game Class
#       a. Begin with building the Game class. Inside the Game class, create a roll method. The roll method should randomly create an array of five numbers with values between 1 and 6. This represents the values on the five dice being rolled.

#       b. After you can successfully roll the five dice. Modify the method so that you can recieve an optional parameter. The optional parameter should be an array of the dice values that a player chose to keep from the previous roll. Modify the method so that the values passed in are kept and only the remaining dice are rolled.

#         For example:
          
#           The players first roll is [4,4,1,4,6]

#           The player chose to keep the three dice with the value of 4, so the next time the roll method should be passed the array of [4,4,4] 

#           The output of the roll method should now include the three 4s and look something like this: [4,4,4,2,3] (only two new values are randomly generated in the roll)

#     2. turn Method
#       In the Game class, create a turn method. This method will execute all the rolls that make up a player's turn. This should include all the prompts to the player and get all the inputs that are needed from the player regarding the dice they wish to retain for the next roll. Think about the user experience in the terminal when you are writing this method. *** Remember that the player can roll a maximum of three times but they may choose to roll only once or twice if that is what they choose.

#       (For now the turn method should just return the final array that will eventually be scored. We will have to return to this method and update it once we have created and fleshed out Player and ScoreCard classes.)

# => Bonus score added later for 65 point plus 35...


class Player
  attr_accessor :player_name, :score

  def initialize(name)
    @player_name = name
  end

end


class ScoreCard
end


class Game
  attr_accessor :running_score, :players_stats

  def initialize
    @running_score = 0
    @players_stats = []
  end

  def welcome_to_yahtzee
    print " 
    Welcome to the game of Yahtzee by hasbro
    A game of Luck and skill
    "
    puts "How many players would you like?"
    number_of_players = gets.chomp.to_i   # Establish array of hashes for @players_stats
    number_of_players.times do |x|
      @players_stats << {"Player_#{x + 1}" => "Player_#{x + 1}", "score" => 0} 
    end
    
    number_of_players.times do |x|    # Allow Players to choose custom name
      puts "Choose a name for player #{x + 1}."
      player_name = gets.strip.capitalize
      if player_name.length > 0   # Allows us to keep the default name Player_1 if user doesn't input a name
        # @players_stats[x] = {}
        @players_stats[x]["Player_#{x + 1}"] = player_name
      end
      puts "Player #{x + 1} is #{@players_stats[x]["Player_#{x + 1}"]}"   #diag
    end

    def roll_dice(die = 5)
      die.times do 
        @rolled_dice << rand(6) + 1
      end

    end

    def running_score
    end

    def whose_turn
    
    end

    def turn
      whose_turn
      roll_dice

      # Roll dice

    end

  end
end


g = Game.new
#g.welcome_to_yahtzee
g.roll_dice

puts
puts "GAME OVER"