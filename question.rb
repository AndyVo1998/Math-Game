class Question
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
  end

  def generate
    "What is #{num1} + #{num2}?"
  end

  def verify(guess)
    @num1 + @num2 == guess
  end
end