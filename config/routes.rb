Rails.application.routes.draw do
  
  get 'bookings/new'

  root 'flights#index'
  resources :flights, only: [:index]

end
