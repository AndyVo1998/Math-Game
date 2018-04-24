class Player
  attr_reader :name
  def initialize(name)
    @name = name
    @lives = 3
  end

  def alive?
    @lives > 0
  end

  def lose_hp
    @lives -= 1
  end

  def display_hp
    "#{@lives}/3"
  end
end