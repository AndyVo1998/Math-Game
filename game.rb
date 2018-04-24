require './question'
require './player'

class Game
  def initialize
    @player1 = Player.new("P1")
    @player2 = Player.new("P2")
    @current_player = @player1
    play
  end

  def play

    while @player1.alive? and @player2.alive?
      continue
    end

    game_over
  end

  def next_turn
    puts "#{@player1.name}: #{@player1.display_hp} #{@player2.name}: #{@player2.display_hp} \n-----NEW TURN-----"
    if @current_player == @player1
      @current_player = @player2
    else
      @current_player = @player1
    end
  end

  def continue
    question = Question.new
    puts "#{@current_player.name}: #{question.generate}"
    print "> "
    answer = gets.chomp.to_i
    if !question.verify(answer)
      @current_player.lose_hp
      puts "Incorrect"
    else
      puts "Correct"
    end
    next_turn
  end

  def game_over
    puts "#{@current_player.name} wins with #{@current_player.display_hp} HP remaining!"
    puts "-----GAME OVER----- \nGood bye!"
  end
end