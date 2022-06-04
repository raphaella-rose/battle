class Game
  attr_reader :current_turn
  def initialize(player_1,player_2)
    @players = [player_1, player_2]
    @current_turn = player_1
  end

  def attack(player)
    player.receive_damage
  end

  def player_1
    @players.first
  end

  def player_2
    @players.last
  end

  def current_turn
    @current_turn
  end


  def switch_turns
    return @current_turn = opponent_of(current_turn)
  end

  def opponent_of(the_player)
   @players.select { |player| player != the_player }.first
    # @opponent = player_2 if the_player == player_1
    # @opponent = player_1 if the_player == player_2
    # return @opponent 
  end

  
  
end