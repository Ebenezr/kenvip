class LocationProductSerializer < ActiveModel::Serializer
  attributes :id, :active, :wastage_factor
  has_one :location
  has_one :product
end
