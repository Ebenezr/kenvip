class CreateOtherLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :other_locations do |t|

      t.timestamps
    end
  end
end
