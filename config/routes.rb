Rails.application.routes.draw do

  resources :cyclists do
    resources :bookings, except: :destroy
    resources :review_of_cyclist, only: [:index, :show]
    resources :review_of_mechanic, except: :destroy
  end

  resources :mechanics do
    resources :services
    resources :bookings, only: [:index, :edit, :update, :show] do
      resources :comments, except: :destroy
    end
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
