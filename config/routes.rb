Rails.application.routes.draw do
  namespace :employer do
    get 'payment/new'
  end
  resources :news
  resources :places
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

    get 'companies/show'
    mount Ckeditor::Engine => '/ckeditor'
    root to: 'static_pages#home'
    resources :jobs
    get 'users/new'
    get 'static_pages/home',to: "home#jobs"
    get '/home', to: 'static_pages#home'
    get '/contact', to: 'static_pages#contact'
    get '/all', to: 'static_pages#products'
    get 'search', to: 'search#index'
    namespace :admin do
      root "admin#index"
    end

    resources :jobs do
      resources :applyjobs, only: [:create, :destroy]
    end
    resources :jobs do
      resources :bookmarks, only: [:create, :destroy]
    end

    resources :jobs
    resources :cvs
    resources :companies, only: [:show]
    resources :profiles
    resources :experiences
    resources :companies do
      resources :jobs, only: [:index]
    end
    resources :educations
    resources :users do
      resources :applyjobs
    end
    resources :users do
      resources :bookmarks
    end
    resources :experiences
    resources :cv_skills
    resources :cv_languages
    namespace :employer do
      resources :jobs do
        resources :applyjobs
      end
      resources :jobs do
        resources :bookmarks
      end
      resources :companies
      resources :payments
      resources :members
      resources :users
      resources :portal_sessions, only: [:create]

    end
    resources :portfolios
  end
end


