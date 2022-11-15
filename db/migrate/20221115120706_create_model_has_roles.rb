class CreateModelHasRoles < ActiveRecord::Migration[7.0]
  def change
    create_table :model_has_roles do |t|
      t.references :role, null: false, foreign_key: true
      t.string :model_type
      t.references :models_tbls, null: false, foreign_key: true

      t.timestamps
    end
  end
end
