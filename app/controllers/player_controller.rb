class PlayerController < ApplicationController
  def player
    @items = [Game.all]
    @player = Player.find(params[:id])
    @playerPick = PlayersPick.where('player_id'=>@player.id)
    @kdaRatio = 7.4
    @csPerMin = 96
    @killParticipation = '78%'
  end
end
