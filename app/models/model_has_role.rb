class ModelHasRole < ApplicationRecord
  belongs_to :role
  belongs_to :model
end
