require './question'
require './player'

class Game
  attr_reader :current_player
  def initialize
    @current_player = 1;
  end

  def change_player
    if @current_player == 1
      @current_player += 1
    else
      @current_player -= 1
    end
  end
end

p1 = Player.new(1)
p2 = Player.new(2)

game1 = Game.new

q1 = Question.new

while p1.lives > 0 and p2.lives > 0
  case game1.current_player
  when 1
    puts "Player 1, What is #{q1.num1} + #{q1.num2}"
    if (q1.verify(gets.chomp.to_i))
      puts "Correct #{p1.display_hp} #{p2.display_hp} \n----- NEW TURN -----"
      game1.change_player
    else
      p1.lose_hp
      puts "Incorrect #{p1.display_hp} #{p2.display_hp} \n----- NEW TURN -----"
      game1.change_player
    end
  when 2
    puts "Player 2, What is #{q1.num1} + #{q1.num2}"
    if (q1.verify(gets.chomp.to_i))
      puts "Correct #{p1.display_hp} #{p2.display_hp} \n----- NEW TURN -----"
      game1.change_player
    else
      p2.lose_hp
      puts "Incorrect #{p1.display_hp} #{p2.display_hp} \n----- NEW TURN -----"
      game1.change_player
    end
  end
end

if p1.lives == 0
  puts "Player 2 Wins with #{p2.lives} HP remaining! \n----- GAME OVER -----"
else
  puts "Player 1 Wins with #{p1.lives} HP remaining! \n----- GAME OVER ----- \n Good bye!"
end
