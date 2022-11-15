class CreateSparePartTypeBalances < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_part_type_balances do |t|
      t.references :spare_part_type, null: false, foreign_key: true
      t.references :location, null: false, foreign_key: true
      t.integer :balance
      t.date :date
      t.references :spare_part_transaction

      t.timestamps
    end
  end
end
