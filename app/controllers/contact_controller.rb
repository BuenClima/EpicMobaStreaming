class ContactController < ApplicationController
  def index
    @games = Game.all
  end

  def sent
    @games = Game.all
    @sent = 'false'
    if request.method == "POST"
      contact = Contact.new(:name => params[:name],
                            :email => params[:email],
                            :gender => params[:gender],
                            :visitant_type => params[:streamerType],
                            :message => params[:message])
      contact.save
      @sent = 'true'
    end
  end
end
