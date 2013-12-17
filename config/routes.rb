WeddingApp::Application.routes.draw do
  resources :views, only: [:index]

  resources :reservations, only: [] do
    get :find, on: :collection
  end

  get 'reservations/:reservation_url' => 'reservations#show'
  put 'reservations/:reservation_url' => 'reservations#update'

  root to: 'views#index'
end
