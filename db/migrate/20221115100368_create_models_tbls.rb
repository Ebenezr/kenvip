class CreateModelsTbls < ActiveRecord::Migration[7.0]
  def change
    create_table :models_tbls do |t|

      t.timestamps
    end
  end
end
