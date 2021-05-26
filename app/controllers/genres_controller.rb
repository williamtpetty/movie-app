class GenresController < ApplicationController

  def index
    genre = Genre.all
    render json: genre.as_json
  end
  
end
