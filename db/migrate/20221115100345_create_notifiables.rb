class CreateNotifiables < ActiveRecord::Migration[7.0]
  def change
    create_table :notifiables do |t|

      t.timestamps
    end
  end
end
