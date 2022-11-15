class SparePartOrdersIssuedSparePartType < ApplicationRecord
  belongs_to :spare_part_order
  belongs_to :spare_part_type
end
