class Mechanic < User

  has_many :bookings
  has_many :review_of_cyclists
  has_many :review_of_mechanics
  has_many :services

  validates :email, uniqueness: true
  validates :street_address, presence: true
  validates :city, presence: true
  validates :postal_code, format: { with: /\A[A-Z][0-9][A-Z]\s?[0-9][A-Z][0-9]\Z/ }

  def self.search(search_params)
    with_city(search_params[:city])
      .with_service(search_params[:service])
      .with_price(search_params[:price])
  end

  # Scopes for searching
  scope :with_city, proc { |city|
    if city.present?
      where("city ILIKE ?", "%#{city}%").distinct
    end
  }

  scope :with_service, proc { |service|
    if service.present?
      terms = split_search_query(service)
      joins(:services).where('service_name ILIKE ALL (array[?])', terms).distinct
    end
  }

  scope :with_price, proc { |price|
    if price.present?
      joins(:services).where("service_price <= ?", "#{price}").distinct
    end
  }

  protected

  def self.split_search_query(query)
    terms = query.split(" ")
    regex_terms = terms.map do |term|
      "%" + term + "%"
    end
  end

end
