Rails.application.routes.draw do
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html

  # Actor routes
  get "/actors" => "actors#index"
  post "/actors/" => "actors#create" 
  get "/actors/:id" => "actors#show" 
  patch "/actors/:id" => "actors#update"
  delete "actors/:id" => "actors#destroy"

  # Movie routes
  get "/movies" => "movies#index"
  post "/movies" => "movies#create"
  get "/movies/:id" => "movies#show"
  patch "/movies/:id" => "movies#update"
  delete "/movies/:id" => "movies#destroy"
end
