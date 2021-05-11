class ActorsController < ApplicationController

  def index
    render json: Actor.all.as_json
  end

  def show
    actor_choice = Actor.find(params[:id])
    render json: actor_choice.as_json
  end

  def create
    actor = Actor.new(
    first_name: params[:first_name],
    last_name: params[:last_name],
    known_for: params[:known_for],
    )
    actor.save
    render json: actor.as_json
  end

  def update
    actor_choice = Actor.find(params[:id])
    actor_choice.update(
      first_name: params[:first_name] || actor_choice.first_name,
      last_name: params[:last_name] || actor_choice.last_name,
      known_for: params[:known_for] || actor_choice.known_for,
    )
    actor_choice.save
    render json: actor_choice.as_json
  end

  def destroy
    actor_choice = Actor.find(params[:id])
    actor_choice.delete
    render json: {message: "The movie has been removed from the archive"}
  end
end
