class CreateProductDataElements < ActiveRecord::Migration[7.0]
  def change
    create_table :product_data_elements do |t|
      t.references :product, null: false, foreign_key: true
      t.references :data_element, null: false, foreign_key: true
      t.integer :dose_number
      t.string :key

      t.timestamps
    end
  end
end
