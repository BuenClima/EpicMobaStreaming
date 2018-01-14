class GameController < ApplicationController
  def lol
    games = Game.all
    tournaments = Streamer.where('game' => Game.find(1), 'streamer_type' => 1).all
    professionals = Streamer.where('game' => Game.find(1), 'streamer_type' => 2).all
    new_streamers = Streamer.where('game' => Game.find(1), 'streamer_type' => 3).all
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end

  def hots
    games = Game.all
    tournaments = Streamer.where('game' => Game.find(3), 'streamer_type' => 1).all
    professionals = Streamer.where('game' => Game.find(3), 'streamer_type' => 2).all
    new_streamers = Streamer.where('game' => Game.find(3), 'streamer_type' => 3).all
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end

  def dota2
    games = Game.all
    tournaments = Streamer.where('game' => Game.find(2), 'streamer_type' => 1).all
    professionals = Streamer.where('game' => Game.find(2), 'streamer_type' => 2).all
    new_streamers = Streamer.where('game' => Game.find(2), 'streamer_type' => 3).all
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end
end
