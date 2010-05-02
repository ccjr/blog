Blog::Application.routes.draw do |map|
  root :to => "articles#index"
  resources :articles
end