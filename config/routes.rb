Rails.application.routes.draw do
  devise_for :postulantes
  devise_for :empresas
  resources :postulaciones
  resources :ofertas
  resources :postulantes
  resources :empresas
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
