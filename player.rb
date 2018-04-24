class Player
  attr_reader :lives, :turn
  def initialize(t)
    @lives = 3
    @player_number = t
  end

  def lose_hp
    @lives -= 1
  end

  def display_hp
    puts "P#{@player_number} #{@lives}/3"
  end
end