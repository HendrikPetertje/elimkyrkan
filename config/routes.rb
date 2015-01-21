Rails.application.routes.draw do
  root 'pages#home'

  get 'pages/activities'

  get 'pages/about'

  get 'pages/program'

  get 'pages/links'

  get 'pages/contact'

  get 'pages/prayer'

  devise_for :users
  mount Ckeditor::Engine => '/ckeditor'
end
