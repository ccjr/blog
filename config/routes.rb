Blog::Application.routes.draw do
  root :to => "articles#index"
  resources :articles do
    resources :comments
  end
  resources :users
  resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"  
end