class TournamentController < ApplicationController
  def index
    @tournament = Streamer.find(1)
    @stats = Statistic.all
    @bets = Bet.all
  end
end
