class LocationProductCountSerializer < ActiveModel::Serializer
  attributes :id, :counted
  has_one :location
  has_one :product
end
