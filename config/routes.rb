Rails.application.routes.draw do
  root to: 'static_pages#home'
  get 'users/new'
  get '/res-post', to: 'static_pages#res-post'
  get '/job-post', to: 'static_pages#job-post'
  get '/new-post', to: 'static_pages#new-post'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/all', to: 'static_pages#products'
  namespace :admin do
    root "admin#index"
  end
end

