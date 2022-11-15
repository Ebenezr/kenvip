class OauthPersonalAccessClientSerializer < ActiveModel::Serializer
  attributes :id
  has_one :client
end
