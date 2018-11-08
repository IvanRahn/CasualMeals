Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#welcome"
  devise_for :users, except: [:destroy],controllers: {sessions: "users/sessions"}, path: "", path_names: {sign_in: "login", sign_out: "logout", sign_up: "register"}
  resources :locations
  resources :chefs, except: [:destroy]
  resources :meals, except: [:destroy]
  resources :transactions, except: [:edit, :update]
  post "/process_payment" => "transactions#process_payment", as: "payment"
  put "/meals" => "chefs#working", as: "chef_update"
  get "/my_meals" => "meals#my_meals", as: "my_meals"
  get "/meals" => "meals#search", as: "search"
end
