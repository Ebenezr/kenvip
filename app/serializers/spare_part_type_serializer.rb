class SparePartTypeSerializer < ActiveModel::Serializer
  attributes :id, :name, :description, :unit_of_measure, :manufacture_date, :warranty_information, :deleted_at
  has_one :spare_part_category
  has_one :maintaince_service_provider
  has_one :manufature
  has_one :supplier
end
