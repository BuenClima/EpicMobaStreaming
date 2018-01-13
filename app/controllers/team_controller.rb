class TeamController < ApplicationController
  def index
    @items = Game.all
  end

  def team
    @team = Team.find(params[:id])
    players = Player.where(team_id: @team.id).all
    games = Game.all
    @items = [games, players]
  end
end
