Blog::Application.routes.draw do |map|
  root :to => "articles#index"
  resources :articles do
    resources :comments
  end
  resources :users
end