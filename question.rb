class Question
  attr_reader :num1, :num2
  def initialize
    @num1 = rand(1..20)
    @num2 = rand(1..20)
    puts "What is #{@num1} + #{@num2}?"
  end

  def verify(guess)
    if(@num1 + @num2 == guess)
      puts true
    else
      puts false
    end
  end
end

q1 = Question.new
q1.verify(gets.chomp.to_i)