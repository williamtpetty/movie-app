Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  get "/first_actor_path" => "actors#pull_first_actor"
  get "/last_actor_path" => "actors#pull_last_actor"
end
