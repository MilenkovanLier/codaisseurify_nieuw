class SongsController < ApplicationController
  def index
    @song = Song.all
  end

  def show
    @song = Song.find(params[:id])
  end

  def new
    @song = Song.new
  end

  def create
    song_params = params.require(:song).permit(:artist_name, :name_song, :duration, :genre)

    @song = Song.new(song_params)

    if @song.save
       redirect_to @song
    else
       render 'new'
    end
  end

  def destroy
    @song = Song.find(params[:id])
    @song.destroy
    redirect_to songs_path
  end
end
