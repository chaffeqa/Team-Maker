# = Player 
# 
# Player objects describe a basic player.
#
# == Creating a new Instance
#     
#     p=Player.new(["Bob","Wild","Oxford","OH","Center","Wildcats"])
#     p.team # => "Wildcats"
#     p.last_name # => "Bob"
#
class Player
  attr_accessor :first_name, :last_name, :city, :state, :position, :team
  
  def initialize(arr)
    @first_name = arr[0]
    @last_name = arr[1]
    @city = arr[2]
    @state = arr[3]
    @position = arr[4]
    @team = arr[5]
  end
  
  # Returns a String representing this Player's full name
  def full_name
    @first_name + " " + last_name
  end
  
  # Returns a String describing this player
  # * Overrides basic Object +to_s+
  # * String returned is Player's full name
  def to_s
    full_name
  end
end

