class MoviesController < ApplicationController

  def index
    render json: Movie.all
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot]
    )
    movie.save
    render json: movie
  end
  
  def show
    movie = Movie.find(params[:id])
    render json: movie
  end

  def update
    movie = Movie.find(params[:id])
    movie.update(
      title: params[:title] || movie.title,
      year: params[:year] || movie.year,
      plot: params[:plot] || movie.plot
    )
    movie.save
    render json: movie
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    render json: {message: "The movie has been removed from the archive"}
  end

end