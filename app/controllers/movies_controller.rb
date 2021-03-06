class MoviesController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show, :create]

  def index
    movie = Movie.all
    render json: movie
  end

  def create
    movie = Movie.new(
      title: params[:title],
      year: params[:year],
      plot: params[:plot],
      director: params[:director],
      english: params[:english]
    )
    if movie.save
      render json: movie
    else
      render json: {errors: movie.errors.full_messages}
    end
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
      plot: params[:plot] || movie.plot,
      director: params[:director] || movie.director,
      english: params[:english] || movie.english
    )
    if movie.save
      render json: movie
    else
      render json:  {errors: movie.errors.full_messages}, status: :unprocessable_entity
    end
  end

  def destroy
    movie = Movie.find(params[:id])
    movie.delete
    render json: {message: "The movie has been removed from the archive"}
  end

end