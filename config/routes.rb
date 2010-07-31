Blog::Application.routes.draw do
  root :to => "articles#index"
  resources :articles do
    member do
      post :notify_friend
    end
    collection do
      get :search
    end
    resources :comments
  end
  resources :users
  resource :session
  match '/login' => "sessions#new", :as => "login"
  match '/logout' => "sessions#destroy", :as => "logout"  
end