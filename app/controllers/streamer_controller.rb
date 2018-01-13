class StreamerController < ApplicationController
  def index
    @streamer = Streamer.find(2)
  end
end
