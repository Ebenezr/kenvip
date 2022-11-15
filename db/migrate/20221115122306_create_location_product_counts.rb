class CreateLocationProductCounts < ActiveRecord::Migration[7.0]
  def change
    create_table :location_product_counts do |t|
      t.references :location, null: false, foreign_key: true
      t.references :product, null: false, foreign_key: true
      t.integer :counted

      t.timestamps
    end
  end
end
