Rails.application.routes.draw do
  devise_for :users,
                path: '',
                path_names: {sign_in: 'login' ,sign_out: 'logout' ,edit: 'profile',sign_up: 'resgistration'},
                controllers: {omniauth_callbacks: 'omniauth_callbacks' }
    as :user do
      get "signin", to: "devise/sessions#new"
      post "signin", to: "devise/sessions#create"
      delete "signout", to: "devise/sessions#destroy"
    end

  scope "(:locale)", locale: /en|vi/ do
    mount RailsAdmin::Engine => '/admin', as: 'rails_admin'
    get 'jobs/show'
    get 'companies/show'
    mount Ckeditor::Engine => '/ckeditor'
    root to: 'static_pages#home'
    resources :jobs
    get 'users/new'
    get '/home', to: 'static_pages#home'
    get '/contact', to: 'static_pages#contact'
    get '/all', to: 'static_pages#products'
    namespace :admin do
      root "admin#index"
    end
    resources :jobs do
      resources :applyjobs, only: [:create, :destroy]
    end
    resources :cvs
    resources :educations
    resources :users do
      resources :applyjobs
    end
    resources :experiences
    resources :cv_skills
    resources :cv_languages
    namespace :employers do
      resources :jobs
      resources :companies
    end
    resources :portfolios
  end
end


