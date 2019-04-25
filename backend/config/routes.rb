Rails.application.routes.draw do
  resources :practices, only: :index
  resources :locations, only: :index
  resources :doctors, only: :index
  resources :patients, only: :index
end
