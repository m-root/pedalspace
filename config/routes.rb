Rails.application.routes.draw do
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

  # For details on the DSL available within this file, see http://guides.rubyonrails.org/routing.html
end
