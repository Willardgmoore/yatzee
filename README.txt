# yatzee
yatzee game



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

# # => Bonus score added later for 65 point plus 35...

# 3. Player Class
#       Create a Player class. The Player class should have instance variables that hold the player's name, scorecard and total score. Initialize the total score to 0 and pass in the player's name. You haven't yet created the ScoreCard class, so you won't be able to create a scorecard for a player yet.
#       For now, go ahead and create an empty method called calculate_score. Eventually, you will use this method to call on the ScoreCard associated with the player and score calculate the score for a turn and return the amount of points that were earned that turn to be added to the player's total score.
#     4. ScoreCard Class
#       a. The ScoreCard in Yahtzee is a little complex. Take a moment to examine it and understand how it works. The ScoreCard will need an instance variable that is a hash that represents each of the rows on the scorecard. I suggest you organize it similar to this:
#         @scorecard = { 
#           upper_section: {
#             aces: 0,
#             twos: 0,
#             threes: 0,
#             etc.
#           },
#           lower_section: {
#             three_of_a_kind: 0,
#             four_of_a_kind: 0,
#             etc.
#           }
#         }
#         ** Notice all the values are initially set to 0.
#       b. Once a row on the scorecard has been chosen, it may not be chosen again. The score on that row will be final. In order to prevent a player from choosing a row twice, add another instance variable that is a hash containing all the possible rows that a player may choose when scoring their turn. This array should be used to present the player with their scoring options. When an option is chosen, the score will be calculated and added to the appropriate part of the @scorecard hash, then the element in the scoring_options hash will be removed from the array. The hash keys should match the @scorecard hash keys so you can use them to reference each other. The values will be different so they can be used to display useful information to the players.
#         @scoring_options = { 
#           upper_section: {
#             aces: 'Total of Aces Only',
#             twos: 'Total of Twos Only',
#             threes: 'Total of Threes Only',
#             etc.
#           },
#           lower_section: {
#             three_of_a_kind: 'Total of all Five Dice',
#             four_of_a_kind: 'Total of all Five Dice',
#             etc.
#           }
#         }
#       c. display_options method
#         Create a method called display_options. This method will display the scoring options available on the player's scorecard from the @scoring_options variable you just created. Display the options in a way that makes it clear that the player should choose one of the key values. For example:
#           Scoring Options:
#             Upper Section
#                 option      description
#               ----------------------------
#                 aces        Total of Aces Only
#                 twos        Total of Twos Only
#                 etc
#             Lower Section
#                 option                 description
#               ---------------------------------------
#                 three_of_a_kind        Total of Aces Only
#                 four_of_a_kind         Total of Twos Only
#                 etc
#           Choose a scoring option: 
#         Once you acquire the players scoring option choice, you are going to need to do the appropriate calculation. You are going to build a method for each of the types of scoring options. For now, go ahead and build a case statement that will call the appropriate method.
#             case player_choice
#               when 'aces'
#                 aces(roll)        // this is a method that you are about to create
#               when 'twos'
#                 twos(roll)         // this is a method that you are about to create
#               when 'threes'
#                 threes(roll)        // this is a method that you are about to create
#               etc.
#       d. scorecard rows methods
#         Create a method called aces. This method is going to count the amount of aces(ones) in the final roll in the turn and return that count to be added to the total score for that player. But now the question arises, 'How do you access the array of rolled dice that you need to score?' That depends on where in your code you execute this method. We will get to that shortly. For now, lets just assume we are passing in the array that we need to score as a parameter for the method. 
              
#               Ex. def aces(roll)
#                     # do stuff here to count the number of aces in the roll array
#                   end
#         Repeat this for all of the scoring options (twos, threes, full house, etc). 
#         *** Note: the logic for each method will be different.
#         Be sure to test all of the methods to make sure they work correctly before moving on.
#         These methods should return the score so that we can add it to the total score for the player.```
