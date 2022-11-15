class ModelHasPermissionSerializer < ActiveModel::Serializer
  attributes :id, :model_type
  has_one :permission_tbl
  has_one :model
end
