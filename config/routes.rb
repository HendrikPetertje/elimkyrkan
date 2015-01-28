Rails.application.routes.draw do
  root 'pages#home'

  get 'aktiviteter', to: 'pages#activities', as: :pages_activities

  get 'om_oss', to: 'pages#about', as: :pages_about

  get 'program', to: 'pages#program', as: :pages_program

  get 'links', to: 'pages#links', as: :pages_links

  get 'pages/contact', to: 'pages#contact', as: :pages_contact

  get 'pages/prayer', to: 'pages#prayer', as: :pages_prayer

  resources :pages, only: [:edit, :update]
  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
end
