class RoleHasPermissionSerializer < ActiveModel::Serializer
  attributes :id
  has_one :permission_tbl
  has_one :role
end
