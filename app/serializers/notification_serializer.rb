class NotificationSerializer < ActiveModel::Serializer
  attributes :id, :type, :notifiable_type, :data, :read_at
  has_one :notifiable
end
