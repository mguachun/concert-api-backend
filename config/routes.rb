Rails.application.routes.draw do
  get 'concerts/index'
  get 'concerts/create'
  get 'concerts/new'
  get 'concerts/show'
  get 'concerts/destroy'
  get 'users/show'
  get 'users/new'
  get 'users/create'
  # For details on the DSL available within this file, see https://guides.rubyonrails.org/routing.html
end
