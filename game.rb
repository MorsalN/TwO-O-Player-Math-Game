# This is the main entrypoint into the program
# It requires the other files/gems that it needs
require 'pp'
require './player'
require './question'

class Game

  def initialize
    @player1 = Player.new('Player 1')
    @player2 = Player.new('Player 2')
    @count = 0
  end

  def current_player
    if @count % 2 == 0
      return @player1
    else 
      return @player2
    end
  end 

  def other_player
    if @count % 2 != 0
      return @player1
    else 
      return @player2
    end 
  end

  def lost_a_life
    current_player.lives -= 1
    # puts current_player.lives, 'current_player'

    if current_player.lives == 0
      puts "GAME OVER"
      puts "#{other_player.name} wins with a score of #{other_player.lives}/3!"
      puts "Goodbye!"
    end
  end 

  def score
    puts "P1: #{@player1.lives}/3 vs P2: #{@player2.lives}/3"
  end 

  def start 
    puts "Welcome to the Math Game!"
    # count = 0
    
    # each iteration dispaly the scores - D
    # ask the question to the next player
    # count = 0, player - 1
    # count = 1, player-2
    # count =2 , player-1

    # capture his response
    # grade the response
    # break based on grade 
    while true do 

      # question part
      q = Question.new
      puts q.question

      print ">"
      #answer part
      answer = gets.chomp.to_i

      # grading part
      if q.check_answer(answer) 
        puts "#{current_player.name}: YES! You are correct."
        score
        puts "----- NEW TURN -----"
        # break
      else 
        puts "#{current_player.name}: Not correct!"
        lost_a_life
        break if current_player.lives == 0
        score
        puts "----- NEW TURN -----"
        # break based on the grading
      end
      # increment the count
      @count += 1
      # puts @count, "count"
    end 
  end 
end 

game = Game.new()
game.start
