class CreatePermissionsTbls < ActiveRecord::Migration[7.0]
  def change
    create_table :permissions_tbls do |t|

      t.timestamps
    end
  end
end
