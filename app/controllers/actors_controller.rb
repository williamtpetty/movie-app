class ActorsController < ApplicationController

  before_action :authenticate_admin, except: [:index, :show]

  def index
    actor = Actor.all
    render json: actor.order(age: :desc)
  end

  def show
    actor = Actor.find(params[:id])
    render json: actor
  end

  def create
    actor = Actor.new( 
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    gender: params[:gender],
    age: params[:age],
    movie_id: params[:movie_id],
    image_url: params[:image_url],
    )

    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}, status: :unauthorized
    end 

  end

  def update
    actor = Actor.find(params[:id])
    actor.update(
      first_name: params[:first_name] || actor.first_name,
      last_name: params[:last_name] || actor.last_name,
      known_for: params[:known_for] || actor.known_for,
      gender: params[:gender] || actor.gender,
      age: params[:age] || actor.age,
      movie_id: params[:movie_id] || actor.movie_id,
      image_url: params[:image_url] || actor.image_url,
    )

    # Need to figure this out - turn data into integer if age is not "Deceased"
    # if actor.age != "Deceased"
    #   actor.age = params[:age].to_i
    # end

    if actor.save
      render json: actor
    else
      render json: {errors: actor.errors.full_messages}
    end    
  end

  def destroy
    actor = Actor.find(params[:id])
    actor.delete
    render json: {message: "The actor has been removed from the archive"}
  end
end
