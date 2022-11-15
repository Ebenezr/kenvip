class SparePartTypeBalance < ApplicationRecord
  belongs_to :spare_part_type_id
  belongs_to :location
  belongs_to :spare_part_transaction
end
