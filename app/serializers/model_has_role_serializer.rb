class ModelHasRoleSerializer < ActiveModel::Serializer
  attributes :id, :model_type
  has_one :role
  has_one :model
end
