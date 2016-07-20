Rails.application.routes.draw do

  get 'pages/home'

  devise_for :users, controllers: { sessions: 'users/sessions'}


  root to: 'application#index'

  resources :cyclists do
    resources :bookings, except: :destroy
    resources :review_of_cyclists, only: [:new, :create, :edit, :update]
  end

  resources :mechanics do
    resources :services
    resources :bookings, except: :destroy do
      resources :comments, except: :destroy
    end
    resources :review_of_mechanics, only: [:new, :create, :edit, :update]
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
