class Question
  def initialize
    @number1 = rand(1..20)
    @number2 = rand(1..20)
    @answer = @number1 + @number2
  end

  def question
    "What is #{@number1} + #{@number2}?"
  end 

  #keeping answer private
  def check_answer(answer)
    return answer == @answer
  end
end 

#testing code
# question = Question.new 
# puts question.question
# puts question.answer