class AdminController < ApplicationController
  before_action :authenticate_user!
  def login
    if current_user.nil?
      redirect_to menu
    end
  end

  def menu
    if !current_user.nil?
      @games = Game.all
    end
  end
end
