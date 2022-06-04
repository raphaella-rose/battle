class Player
  def initialize(name)
    @name = name
    @points = 60
  end

  def name()
    return @name
  end

  def points()
    return @points
  end

  def attack(player)
    player.receive_damage
  end

  def receive_damage()
    @points -= 10
  end
end