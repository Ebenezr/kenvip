class SparePartTypeBalanceSerializer < ActiveModel::Serializer
  attributes :id, :balance, :date
  has_one :spare_part_type_id
  has_one :location
  has_one :spare_part_transaction
end
