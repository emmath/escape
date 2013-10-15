class Trip < ActiveRecord::Base
  validates :city, presence: true
  include HTTParty

  # city search
  def get_city
    HTTParty.get("http://deals.expedia.com/beta/deals/hotels.json?city=#{city.parameterize}")
  end

  # pulls up deal view
  def self.deal_now
    HTTParty.get("http://deals.expedia.com/beta/deals/hotels.json?minTotalRate")
  end

end
