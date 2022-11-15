class DataElementSerializer < ActiveModel::Serializer
  attributes :id, :name, :value_type, :source, :is_immunising_data_element, :section
end
