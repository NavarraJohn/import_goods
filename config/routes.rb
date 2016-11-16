Rails.application.routes.draw do
  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
  #   "/any_name" to: "controller#method"
  

  get "/", to:"goods#home"

  get "/home", to: "goods#home" 

  get "/goods", to: "goods#index"
  
  get "/goods/new", to: "goods#new"
  post "/goods", to: "goods#create"

  get "/goods/:id/edit", to: "goods#edit"
  patch "/goods/:id", to: "goods#update"

  get "/goods/:id", to: "goods#show"

  delete "/goods/:id", to: "goods#destroy" 



  #http://localhost:3000/goods/2

end



