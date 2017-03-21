Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  root to: "users#index"
  get "/users" => "users#index"
  get "/exercises" => "exercises#index"

  namespace :api do
  	namespace :v1 do
      #User API Routes
  		get "/users" => "users#index", as: "users"
      get "/signup" => "users#new", as: "new_user"
      post "/users" => "users#create"
      get "/users/:id" => "users#show", as: "user"
      get "/login" => "sessions#new"
      post "/sessions" => "sessions#create"
      delete "/sessions" => "sessions#destroy"

      #Exercise API Routes
      get "/exercises" => "exercises#index"
      post "/exercises" => "exercises#create"
      get "/exercises/:id" => "exercises#show"

      #Daily Workout Routes
      get "/dailyworkouts" => "daily_workouts#index"
      post "/dailyworkouts" => "dailyworkouts#create"
      get "/dailyworkouts/:id" => "dailyworkouts#show"
      #ADD DESTROY AND EDIT route HERE

      #Carted Workout Routes
      get "/cartedworkouts" => "carted_workouts#index"
      post "/cartedworkouts" => "carted_workouts#create"
      get "/cartedworkouts/:id" => "carted_workouts#show"
      delete "/cartedworkouts" => "carted_workouts#delete"

  	end
  end

end
