class ModelHasPermission < ApplicationRecord
  belongs_to :permission
  belongs_to :model
end
