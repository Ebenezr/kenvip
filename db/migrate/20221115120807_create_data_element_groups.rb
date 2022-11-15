class CreateDataElementGroups < ActiveRecord::Migration[7.0]
  def change
    create_table :data_element_groups do |t|
      t.string :name
      t.string :retrieve

      t.timestamps
    end
  end
end
