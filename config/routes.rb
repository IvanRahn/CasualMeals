Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html

  root "home#welcome"
  devise_for :users, path: "", path_names: {sign_in: "login", sign_out: "logout", sign_up: "register"}
  resources :chefs
  resources :meals 
  resources :transactions, except: [:edit, :update]
  post "/process_payment" => "transactions#process_payment", as: "payment"

  
end
