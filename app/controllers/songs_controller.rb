class songsController < ApplicationController

    def index
      @song = song.all
    end

    def new
      @song = song.new
    end

    def show
      @song = song.find(params[:id])
    end

    def create
      song_params = params.require(:song).permit(:name, :song)

      @song = song.new(song_params)

      if @song.save
         redirect_to @song
      else
         render 'new'
      end
    end

    def destroy
      @song = song.find(params[:id])

      @song.destroy

      redirect_to songs_path
  end
end
