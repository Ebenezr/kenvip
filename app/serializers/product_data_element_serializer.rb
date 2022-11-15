class ProductDataElementSerializer < ActiveModel::Serializer
  attributes :id, :dose_number, :key
  has_one :product
  has_one :data_element
end
