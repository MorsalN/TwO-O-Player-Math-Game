class Game
  #define objects (Player 1..)

  # lives, setLives = setState(3)
  # current_player, setCurrentPlayer = setState(PlayerOne)

  def play
    # wins/losses
      #if life_of_player is true then other player is winner
    # question
  end

  def life_of_player
    #if lives < 1 
      #GAME OVER
  end 
  
  def player
    # Get from Player Class
    #Prompted Question from Question Class

    # userAnswer = $stdin.gets.chomp
      #if correct answer --> userAnswer == questions.answer
        # Player 2: YES! You are correct.
        # return updated score board ex. P1: 2/3 vs P2: 3/3
        # ----- NEW TURN -----
        # Other player's turn now --> setCurrentPlayer(playerOne)

      #if incorrect answer --> userAnswer != questions.answer
        # Player 2: Not correct!

        # setLives should minus 1
          #check life_of_player

        # return updated score board ex. P1: 2/3 vs P2: 2/3
        # ----- NEW TURN -----
        # Other player's turn now --> setCurrentPlayer(playerOne)
  end

  def questions
    # get from Question Class
    number1 = rand(1..20)
    number2 = rand(1..20)

    "What is #{number1 + number2}?"

    answer = number1 + number2
  end

end 