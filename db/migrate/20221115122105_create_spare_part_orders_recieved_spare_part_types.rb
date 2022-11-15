class CreateSparePartOrdersRecievedSparePartTypes < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_part_orders_recieved_spare_part_types do |t|
      t.references :spare_part_order, null: false, foreign_key: true
      t.references :spare_part_type, null: false, foreign_key: true
      t.integer :quantity
      t.date :deleted_at

      t.timestamps
    end
  end
end
