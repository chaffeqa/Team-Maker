# @author Quinn Chaffee

require 'csv'  # include CSV class... I call no-foul, citing that CSV is part of the ruby std lib (as of 1.8.7). :P
require "team.rb"
require "player.rb"

# Two empty arrays to append objects to...
players = []
teams = []


# Parse in CSV file:
#   1) Skip the first line
#   2) Store each row as a Player instance 
#   3) Append Player to players[]
first_line=true
CSV.open('data.csv', 'r', ',') do |row|
  players << Player.new(row) unless first_line
  first_line=false
end

# Create Teams:
#   1) Group Player's by team
#   2) Create a Team instance 
#   3) Add Team to teams[]
players.group_by(&:team).each do |team, team_players|
  teams << Team.new(team, team_players)
end

# Print the team rosters:
#   1) Print each Team in teams
#   2) (use printf to allow for \n and \t formatting in command prompt)
printf teams.join("\n") + "\n"
