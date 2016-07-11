Rails.application.routes.draw do

  namespace :users do
    get 'mechanics/new'
  end

  namespace :users do
    get 'mechanics/create'
  end

  namespace :users do
    get 'mechanics/edit'
  end

  namespace :users do
    get 'mechanics/update'
  end

  namespace :users do
    get 'mechanics/show'
  end

  namespace :users do
    get 'mechanics/delete'
  end

  namespace :users do
    get 'cyclists/create'
  end

  namespace :users do
    get 'cyclists/update'
  end

  namespace :users do
    get 'cyclists/show'
  end

  namespace :users do
    get 'cyclists/new'
  end

  namespace :users do
    get 'cyclists/edit'
  end

  namespace :users do
    get 'cyclists/delete'
  end

  namespace :cyclists do
    get 'reviews/new'
  end

  namespace :cyclists do
    get 'reviews/create'
  end

  namespace :cyclists do
    get 'reviews/edit'
  end

  namespace :cyclists do
    get 'reviews/update'
  end

  namespace :cyclists do
    get 'reviews/show'
  end

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
