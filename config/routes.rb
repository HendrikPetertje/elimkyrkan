Rails.application.routes.draw do
  scope(path_names: { new: 'ny', edit: 'andra' }) do
    root 'pages#home'

    get 'hem', to: 'pages#home', as: :pages_home

    get 'aktiviteter', to: 'pages#activities', as: :pages_activities

    get 'om_oss', to: 'pages#about', as: :pages_about

    get 'program', to: 'pages#program', as: :pages_program

    get 'lankar', to: 'pages#links', as: :pages_links

    get 'pages/contact', to: 'pages#contact', as: :pages_contact

    get 'pages/prayer', to: 'pages#prayer', as: :pages_prayer

    devise_for :users
    scope 'admin' do
      resources :pages, only: [:edit, :update]
      resources :sidebarwidgets, except: [:show]
      resources :banners, except: [:show]
    end
    mount Ckeditor::Engine => '/ckeditor'
  end
end
