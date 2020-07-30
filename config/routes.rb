Rails.application.routes.draw do
  mount Ckeditor::Engine => '/ckeditor'
  root to: 'static_pages#home'
  resource :jobs, only: [:show]
  get 'users/new'
  get '/job-post', to: 'employer#job-post'
  get '/new-post', to: 'employer#new-post'
  get '/create-cv', to: 'employer#create-cv'
  get '/home', to: 'static_pages#home'
  get '/contact', to: 'static_pages#contact'
  get '/all', to: 'static_pages#products'
  namespace :admin do
    root "admin#index"
  end

  devise_for :users,
              path: '',
              path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
              controllers: {omniauth_callbacks: 'omniauth_callbacks' }
  as :user do
    get "signin" => "devise/sessions#new"
    post "signin" => "devise/sessions#create"
    delete "signout" => "devise/sessions#destroy"
  end
  resources :cvs
  resources :users
  resources :experiences
  resources :cv_languages
  namespace :employers do
    resources :jobs
  end
end

