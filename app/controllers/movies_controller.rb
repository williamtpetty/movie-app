class MoviesController < ApplicationController

  def pull_all_movies
    render json: {all_movies: Movie.all}
  end

  def pull_second_movie
    render json: {second_movie: Movie.second}
  end
  
  def choose_one_movie
    user_input_id = params[:id_input].to_i
    render json: {your_movie: Movie.find_by(id: user_input_id)}
  end
end
