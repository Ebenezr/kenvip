class OathAccessTokenSerializer < ActiveModel::Serializer
  attributes :id, :name, :scope, :revoked, :expires_at
  has_one :user
  has_one :client
end
