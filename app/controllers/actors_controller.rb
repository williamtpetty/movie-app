class ActorsController < ApplicationController

  def pull_first_actor
    render json: {actor: Actor.first}
  end
  
  def pull_last_actor
    render json: {actor: Actor.last}
  end

  def pull_all_actors
    render json: {actors: Actor.all}
  end

  def choose_one_actor
    actor_choice = params[:actor_id].to_i
    render json: {your_actor: Actor.find_by(id: actor_choice)}
  end

end
