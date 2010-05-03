Blog::Application.routes.draw do |map|
  root :to => "articles#index"
  resources :articles
  resources :users
end