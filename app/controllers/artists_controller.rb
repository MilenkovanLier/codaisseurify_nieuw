class ArtistsController < ApplicationController

    def index
      @artists = Artist.all
    end

    def new
      @artist = Artist.new
    end

    def show
      @artist = Artist.find(params[:id])
    end

    def create
      artist_params = params.require(:artist).permit(:name, :song)

      @artist = Artist.new(artist_params)

      if @artist.save
         redirect_to @artist
      else
         render 'new'
      end
    end

    def destroy
      @artist = artist.find(params[:id])

      @artist.destroy

      redirect_to artists_path
  end
end
