class CreateSparePartTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_part_types do |t|
      t.references :spare_part_category, null: false, foreign_key: true
      t.string :name
      t.string :description
      t.string :unit_of_measure
      t.date :manufacture_date
      t.string :warranty_information
      t.references :maintaince_service_provider, null: false, foreign_key: true
      t.date :deleted_at
      t.references :manufacture, null: false, foreign_key: true
      t.references :supplier, null: false, foreign_key: true

      t.timestamps
    end
  end
end
