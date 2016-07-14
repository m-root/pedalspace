Rails.application.routes.draw do

  resources :cyclists do
    resources :bookings, except: :destroy
  end

  resources :mechanics do
    resources :services
    resources :bookings, only: [:index, :edit, :update, :show]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
