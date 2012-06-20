class Course < ActiveRecord::Base
  validates_presence_of :name, :price, :message => "can't be blank"
  MERCHANT_ID = 368578617175864
  MERCHANT_KEY = 'zKSnCdZXULVoRQ6Vf77JwQ'

  def to_google_product
    hash = {}
    hash[:name] = self.name
    hash[:description] = self.name
    hash[:price] = self.price
    hash[:quantity] = 1
    hash[:currency] = 'USD'
    hash[:regular_shipping] = 0
    hash
  end
end
