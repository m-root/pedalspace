Rails.application.routes.draw do

  root to: 'application#index'

  resources :cyclists do
    resources :bookings, except: :destroy
    resources :review_of_cyclists, only: [:index, :show]
    resources :review_of_mechanics, except: :destroy
  end

  resources :mechanics do
    resources :services
    resources :bookings, except: :destroy do
      resources :comments, except: :destroy
    end
    resources :review_of_mechanics, only: [:index, :show]
    resources :review_of_cyclists, except: :destroy
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
