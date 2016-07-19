require 'elasticsearch/model'

class Mechanic < User

  has_many :bookings
  has_many :review_of_cyclists
  has_many :review_of_mechanics
  has_many :services

  validates :email, uniqueness: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :postal_code, format: { with: /\A[A-Z][0-9][A-Z]\s?[0-9][A-Z][0-9]\Z/ }

  include Elasticsearch::Model
  include Elasticsearch::Model::Callbacks

  settings index: { number_of_shards: 1 } do
    mappings dynamic: 'false' do
      indexes :first_name, analyzer: 'english', index_options: 'offsets'
    end
  end

end

Mechanic.import
