class CreateSparePartTranscactions < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_part_transcactions do |t|
      t.references :transaction_type, null: false, foreign_key: true
      t.references :transaction_reason, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.references :spare_part_order, null: false, foreign_key: true
      t.date :data
      t.references :other_location, null: false, foreign_key: true
      t.references :user, null: false, foreign_key: true
      t.string :status
      t.date :deleted
      t.integer :quantity
      t.references :spare_part_type, null: false, foreign_key: true

      t.timestamps
    end
  end
end
