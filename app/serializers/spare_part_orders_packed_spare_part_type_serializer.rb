class SparePartOrdersPackedSparePartTypeSerializer < ActiveModel::Serializer
  attributes :id, :quantity, :deleted_at
  has_one :spare_part_order
  has_one :spare_part_type
end
