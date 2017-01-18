Rails.application.routes.draw do

  root 'static_pages#home'
  get 'about', to: 'static_pages#about', as: 'about'

  get   'boards',         to: 'boards#index', as: 'boards'
  get   'boards/new',     to: 'boards#new',   as: 'new_board'
  post  'boards',         to: 'boards#create'
  get   'board/:id',      to: 'boards#show',  as: 'board'
  get   'board/:id/edit', to: 'boards#edit'
  patch 'board/:id',      to: 'boards#update'

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
