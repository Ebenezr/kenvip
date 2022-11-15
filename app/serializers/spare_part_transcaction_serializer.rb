class SparePartTranscactionSerializer < ActiveModel::Serializer
  attributes :id, :data, :status, :"deleted-at", :quantity
  has_one :transaction_type
  has_one :transaction_reason
  has_one :location
  has_one :spare_part_order
  has_one :other_location
  has_one :user
  has_one :spare_part_type
end
