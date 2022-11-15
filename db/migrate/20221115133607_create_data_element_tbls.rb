class CreateDataElementTbls < ActiveRecord::Migration[7.0]
  def change
    create_table :data_element_tbls do |t|

      t.timestamps
    end
  end
end
