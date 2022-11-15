class SparePartTranscaction < ApplicationRecord
  belongs_to :transaction_type
  belongs_to :transaction_reason
  belongs_to :location
  belongs_to :spare_part_order
  belongs_to :other_location
  belongs_to :user
  belongs_to :spare_part_type
end
