class MoviesController < ApplicationController

  def index
    render json: Movie.all.as_json
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    movie.save
    render json: movie.as_json
  end
  
  def show
    movie = Movie.find(params[:id])
    render json: movie.as_json
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(
      title: params[:title] || movie.title,
      year: params[:year] || movie.year,
      plot: params[:plot] || movie.plot
    )
    movie.save
    render json: movie.as_json
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    render json: {message: "The movie has been removed from the archive"}
  end

end