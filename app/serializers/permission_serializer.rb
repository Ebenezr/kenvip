class PermissionSerializer < ActiveModel::Serializer
  attributes :id, :name, :guard_name, :resource, :location_scope
end
