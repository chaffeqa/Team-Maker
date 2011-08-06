# = Team 
# 
# Team objects describe a basic team.
#
# == Creating a new Instance
#     
#     t=Team.new("Wildcats",[Player,Player])
#     t.team_name # => "Wildcats"
#
class Team
  attr_accessor :team_name, :players
  
  def initialize(team_name, players=[])
    @team_name = team_name
    @players = players
  end
 
  # Returns a string representing this Team.
  # * String is formated with '\n' and '\t'
  # * Plaers are printed using to_s
  def to_s
    team_name + "\n\t" + players.collect {|player| player.to_s}.join("\n\t")
  end
end
