Rails.application.routes.draw do
  get 'projects/index'
  get 'projects/show'
  devise_for :users
  # Define your application routes per the DSL in https://guides.rubyonrails.org/routing.html

  # Defines the root path route ("/")
  # root "articles#index"
  root to: "pages#about"
  get "about", to: "pages#about"
  get "home", to: "pages#home"
    # devise_for :user, :path => '', :path_names => { :sign_in => "login", :sign_out => "logout", :sign_up => "register" }

end
