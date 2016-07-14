Rails.application.routes.draw do

  resources :cyclists

  resources :mechanics do
    resources :services
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
