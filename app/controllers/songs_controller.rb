class SongsController < ApplicationController
  def index
    @song = Song.all
  end
end
