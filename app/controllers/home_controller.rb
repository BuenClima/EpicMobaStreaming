class HomeController < ApplicationController
  def index
    @games = Game.all
  end

  # @return [Streamers]
  def streamers
    professionals = Streamer.where("streamer_type").all
    if professionals.count > 3
      data = ["data" => [professionals[0],professionals[1],professionals[2]]]
      render json: data
    end
  end

  def streamerbyid
    id = params[:id].to_i
    nextid = params[:id].to_i + 4
    render :json => Streamer.where("id > ? AND id < ?",id,nextid).all
  end
end
