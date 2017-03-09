Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"

  get "/users" => "users#index", as: "users"
  get "/signup" => "users#new", as: "new_user"
  post "/users" => "users#create"
  get "/users/:id" => "users#show", as: "user"
  get "/login" => "sessions#new"
  post "/sessions" => "sessions#create"
  delete "/sessions" => "sessions#destroy"


  namespace :api do
  	namespace :v1 do
  		get "/users" => "users#index"
  	end
  end

end
