require 'active_support/all' # gem install activesupport -v 6.1.4.4 

class Player
  attr_accessor :lives
  
  def initialize(name)
    @name = name
    @lives = 3
  end 

  def name 
    @name
  end
  
  def lives 
    @lives
  end 
end 

#testing code
# player1 = Player.new("Player 1")
# puts player1.name

# player2 = Player.new("Player 2")
# puts player2.name


