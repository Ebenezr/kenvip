class LocationProductCount < ApplicationRecord
  belongs_to :location
  belongs_to :product
end
