class CreateTransactioReasons < ActiveRecord::Migration[7.0]
  def change
    create_table :transactio_reasons do |t|
      t.string :name

      t.timestamps
    end
  end
end
