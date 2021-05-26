class MovieGenresController < ApplicationController

  before_action :authenticate_admin

  def create
    movie_genre = MovieGenre.new(
      movie_id: params[:movie_id],
      genre_id: params[:genre_id]
    )
    if movie_genre.save
      render json: movie_genre.as_json
    else
      render json: {message: movie_genre.errors.full_messages}
    end
  end

  def destroy
    movie_genre = MovieGenre.find(params[:id])
    movie_genre.delete
    render json: {message: "This genre has been removed from the movie"}
  end
end
