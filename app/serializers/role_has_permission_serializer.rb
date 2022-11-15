class RoleHasPermissionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :permission
  has_one :role
end
