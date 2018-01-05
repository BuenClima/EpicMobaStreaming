class GameController < ApplicationController
  def lol
    @games = Game.all
    @streamers = Streamer.where("game" => Game.where("name" => "League of Legends")).all
  end

  def hots
    @games = Game.all
    @streamers = Streamer.where("game" => Game.where("name" => "League of Legends")).all
  end

  def dota2
    @games = Game.all
    @streamers = Streamer.where("game" => Game.where("name" => "League of Legends")).all
  end
end
