class GenresController < ApplicationController
    def show
        @genre = Genre.find(genre_params['id'])
    end
    def new
        @newgenre = Genre.new
    end
    def create
        @newgenre = Genre.create(genre_params['genre'])
        redirect_to genre_path(@newgenre)
    end
    def edit
        @genre = Genre.find(genre_params['id'])
    end
    def update
        @updatedgenre = Genre.update(genre_params['id'],genre_params['genre'])
        redirect_to genre_path(@updatedgenre)
    end

    private
    def genre_params
        params.permit('id',{'genre' => ['name']})
    end
end
