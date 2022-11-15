class CreateDataElements < ActiveRecord::Migration[7.0]
  def change
    create_table :data_elements do |t|
      t.string :name
      t.string :value_type
      t.string :source
      t.string :is_immunising_data_element
      t.string :section

      t.timestamps
    end
  end
end
