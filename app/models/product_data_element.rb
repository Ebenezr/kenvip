class ProductDataElement < ApplicationRecord
  belongs_to :product
  belongs_to :data_element
end
