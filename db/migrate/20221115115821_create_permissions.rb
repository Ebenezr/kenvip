class CreatePermissions < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions do |t|
      t.string :name
      t.string :guard_name
      t.string :resource
      t.string :location_scope

      t.timestamps
    end
  end
end
