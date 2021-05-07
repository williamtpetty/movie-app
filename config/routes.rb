Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/first_actor_path" => "actors#pull_first_actor"
  get "/last_actor_path" => "actors#pull_last_actor"
  get "/all_actors" => "actors#pull_all_actors"
  get "/choose_actor" => "actors#choose_one_actor"

  get "all_movies_path" => "movies#pull_all_movies"
  get "second_movie_path" => "movies#pull_second_movie"
  get "choose_movie" => "movies#choose_one_movie"
end
