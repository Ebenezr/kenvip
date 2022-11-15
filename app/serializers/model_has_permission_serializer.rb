class ModelHasPermissionSerializer < ActiveModel::Serializer
  attributes :id, :model_type
  has_one :permission
  has_one :model
end
