class ContactController < ApplicationController
  def index
    @games = Game.all
  end

  def sent
    @games = Game.all
    @sent = 'false'
    if request.method == "POST"
      channel = params[:twitchChannel]
      email = params[:email]
      message = params[:message]
      gender = params[:gender]
      dateToPlay = params[:dateToPlay]
      contact = Contact.new(:twitchChannel => channel, :email => email, :message => message, :gender => gender, :dateToPlay => dateToPlay)
      contact.save
      @sent = 'true'
    end
  end
end
