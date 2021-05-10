Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Gets
  get "/all_actors" => "actors#pull_all_actors" # query
  get "/choose_actor" => "actors#choose_one_actor"
  get "choose_single_actor/:actor_id" => "actors#choose_one_actor" # segment

  get "all_movies_path" => "movies#pull_all_movies"
  get "choose_movie" => "movies#choose_one_movie"

  # Posts
  post "single_actor" => "actors#choose_one_actor" #body

end
