class SparePartType < ApplicationRecord
  belongs_to :spare_part_category
  belongs_to :maintaince_service_provider
  belongs_to :manufature
  belongs_to :supplier
end
