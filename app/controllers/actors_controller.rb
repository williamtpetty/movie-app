class ActorsController < ApplicationController

  def pull_first_actor
    render json: {actor: Actor.first}
  end
  
  def pull_last_actor
    render json: {actor: Actor.last}
  end
  
end
