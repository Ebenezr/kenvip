class CreateModelHasPermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :model_has_permissions do |t|
      t.references :permissions_tbl, null: false, foreign_key: true
      t.string :model_type
      t.references :models_tbls, null: false, foreign_key: true

      t.timestamps
    end
  end
end
