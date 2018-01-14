class GameController < ApplicationController
  def lol
    games = Game.all
    tournaments = Streamer.streamerByGameAndType(1,1)
    professionals = Streamer.streamerByGameAndType(1,2)
    new_streamers = Streamer.streamerByGameAndType(1,3)
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end

  def hots
    games = Game.all
    tournaments = Streamer.streamerByGameAndType(3,1)
    professionals = Streamer.streamerByGameAndType(3,2)
    new_streamers = Streamer.streamerByGameAndType(3,3)
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end

  def dota2
    games = Game.all
    tournaments = Streamer.streamerByGameAndType(2,1)
    professionals = Streamer.streamerByGameAndType(2,2)
    new_streamers = Streamer.streamerByGameAndType(2,3)
    matchups = Matchup.all
    @items = [games, tournaments, professionals, new_streamers, matchups]
  end
end
