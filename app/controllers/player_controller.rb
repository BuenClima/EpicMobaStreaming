class PlayerController < ApplicationController
  def player
    @player = Player.find(params[:id])
    @playerPick = PlayersPick.where('player_id'=>@player.id)
  end
end
