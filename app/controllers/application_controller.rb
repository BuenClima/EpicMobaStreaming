class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :loadGames

  def loadGames
    @games = Game.all
  end
end
