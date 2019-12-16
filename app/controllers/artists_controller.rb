class ArtistsController < ApplicationController
    def show
        @artist = Artist.find(artist_params['id'])
    end
    def new
        @artist = Artist.new
    end
    def create
        @newartist = Artist.create(artist_params['artist'])
        redirect_to artist_path(@newartist)
    end
    def edit
        @artist = Artist.find(artist_params['id'])
    end
    def update
        @artist = Artist.update(artist_params['id'],artist_params['artist'])
        redirect_to artist_path(@artist)
    end

    private
    def artist_params
        params.permit('id',{'artist' => ['name','bio']})
    end
end
