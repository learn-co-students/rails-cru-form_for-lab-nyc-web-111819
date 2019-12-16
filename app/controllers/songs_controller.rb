class SongsController < ApplicationController
    def index
        @songs = Song.all
    end
    def show
        @song = Song.find(song_params['id'])
        @genre = Genre.find(@song.genre_id)
        @artist = Artist.find(@song.artist_id)
    end
    def new
        @song = Song.new
    end
    def create
        @song = Song.create(song_params['song'])
        redirect_to song_path(@song)
    end
    def edit
        @song = Song.find(song_params['id'])
        @artist = @song.artist_id
        @genre = @song.genre_id
    end
    def update
        @song = Song.update(song_params['id'],song_params['song'])
    end

    private
    def song_params
        params.permit('id',{'song'=>['name','artist_id','genre_id']})
    end
end
