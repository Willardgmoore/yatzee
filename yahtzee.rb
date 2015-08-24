require 'pry'


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
    @number_of_players = gets.chomp.to_i   # Establish array of hashes for @players_stats
    @number_of_players.times do |x|
      @players_stats << {"Player_#{x + 1}" => "Player_#{x + 1}", "score" => 0} 
    end
    
    @number_of_players.times do |x|    # Allow Players to choose custom name
      puts "Choose a name for player #{x + 1}."
      player_name = gets.strip.capitalize
      if player_name.length > 0   # Allows us to keep the default name Player_1 if user doesn't input a name
        # @players_stats[x] = {}
        @players_stats[x]["Player_#{x + 1}"] = player_name
      end
      puts "Player #{x + 1} is #{@players_stats[x]["Player_#{x + 1}"]}"   #diag
    end
  end

  def turn
    display_score_options  
     3.times do unless @saved_dice.length <= 5
       roll_dice(5 - @saved_dice.length)
       display_dice
       held_dice
     end
     end
   display_score_options
   select_score_options
  end

def display_score_options
  puts '''
  Scoring Options:
  Upper Section
  option      description
  ----------------------------
  aces        Total of Aces Only
  twos        Total of Twos Only
  threes      Total of threes Only
  fours       Total of fours Only
  fives       Total of fives Only
  sixes       Total of sixes Only

  Lower Section
  option                 description
  ---------------------------------------
  three_of_a_kind        Total of Aces Only
  four_of_a_kind         Total of Twos Only
  full house             Three of one and two of another
  small straight         Sequence of 4 dice
  larger straight        Sequence of 5 dice
  chance                 Total of all 5 dice
  yahtzee                Five of a kind 

  '''
end

def select_score_options

  # user selects score based on die rolls
end

def roll_dice(die = 5)
  @rolled_dice = []
  die.times do 
    @rolled_dice << rand(6) + 1
  end
  #puts @rolled_dice
end

def held_dice    
  @saved_dice = []
  input_number = nil
  puts "Which of these dice do you want to keep? Enter each number, then type roll to roll again."
  unless input_number == 0
  input_number = gets.chomp.to_i
  @saved_dice << input_number
  end
end

def display_dice
  @rolled_dice.length do
    puts "@rolled_dice[0]"
  end
end

def running_score
end

def round

end

def game_over
  # checks to eval select_score_options == full for .last player
end

def reset
  # reset each turns variables to zero
end

def game
  welcome_to_yahtzee
  13.times do # => number of rounds
    @number_of_players.times do |x|  #Each player's turn
     puts "It's your turn #{@players_stats[x]["Player_#{x + 1}"]}."
     turn
    end
     reset
  end

  game_over
  # turn
end

end

g = Game.new

g.game
#g.welcome_to_yahtzee
# g.roll_dice
# g.display_dice

# puts
# puts "GAME OVER"
