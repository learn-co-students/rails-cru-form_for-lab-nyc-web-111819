class ArtistsController < ApplicationController
    before_action :find_artist, only: [:edit, :update, :show]
    def index
        @artists = Artist.all
    end

    def show
        
    end

    def create
        @artist = Artist.create(artist_params)

        redirect_to artist_path(@artist)
    
    end

    def edit
        

        
    end

    def update
        @artist.update(artist_params)
        redirect_to artist_path(@artist)
    end

    def new
        @artist = Artist.new
    end

    private

    def artist_params
        params.require(:artist).permit(:name, :bio)
    end

    def find_artist
        @artist = Artist.find(params[:id])
    end


end
