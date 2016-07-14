Rails.application.routes.draw do

  get 'comments/index'

  get 'comments/new'

  get 'comments/create'

  get 'comments/edit'

  get 'comments/update'

  get 'comments/show'

  get 'services/index'

  get 'services/new'

  get 'services/create'

  get 'services/edit'

  get 'services/update'

  get 'services/show'

  get 'services/delete'

  get 'review_of_mechanics/index'

  get 'review_of_mechanics/new'

  get 'review_of_mechanics/create'

  get 'review_of_mechanics/edit'

  get 'review_of_mechanics/update'

  get 'review_of_mechanics/show'

  get 'review_of_cyclists/index'

  get 'review_of_cyclists/new'

  get 'review_of_cyclists/create'

  get 'review_of_cyclists/edit'

  get 'review_of_cyclists/update'

  get 'review_of_cyclists/show'

  get 'mechanics/index'

  get 'mechanics/new'

  get 'mechanics/create'

  get 'mechanics/edit'

  get 'mechanics/update'

  get 'mechanics/show'

  get 'mechanics/delete'

  get 'cyclists/index'

  get 'cyclists/new'

  get 'cyclists/create'

  get 'cyclists/edit'

  get 'cyclists/update'

  get 'cyclists/show'

  get 'cyclists/delete'

  namespace :mechanics do
    get 'bookings/edit'
  end

  namespace :mechanics do
    get 'bookings/update'
  end

  namespace :mechanics do
    get 'bookings/show'
  end

  namespace :cyclists do
    get 'bookings/new'
  end

  namespace :cyclists do
    get 'bookings/create'
  end

  namespace :cyclists do
    get 'bookings/edit'
  end

  namespace :cyclists do
    get 'bookings/update'
  end

  namespace :cyclists do
    get 'bookings/show'
  end

  namespace :mechanics do
    get 'reviews/new'
  end

  namespace :mechanics do
    get 'reviews/create'
  end

  namespace :mechanics do
    get 'reviews/edit'
  end

  namespace :mechanics do
    get 'reviews/update'
  end

  namespace :mechanics do
    get 'reviews/show'
  end

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
