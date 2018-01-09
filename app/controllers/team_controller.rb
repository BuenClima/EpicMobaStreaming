class TeamController < ApplicationController
  def index
    @items = Game.all

  end

  def team
    @team = Team.find(params[:id])
    players = Player.where(team_id: @team.id).all
    games = Game.all
    @player_details = []
    i = 0
    players.each do |player|
      @player_details[i] = [player, PlayersPick.where('player' => player).all]
      i += 1
    end
    @items = [games, players]
  end
end
