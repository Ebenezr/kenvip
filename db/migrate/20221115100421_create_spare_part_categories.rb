class CreateSparePartCategories < ActiveRecord::Migration[7.0]
  def change
    create_table :spare_part_categories do |t|

      t.timestamps
    end
  end
end
