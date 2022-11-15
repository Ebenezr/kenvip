class CreateNotifications < ActiveRecord::Migration[7.0]
  def change
    create_table :notifications do |t|
      t.string :type
      t.string :notifiable_type
      t.references :notifiable, null: false, foreign_key: true
      t.string :data
      t.date :read_at

      t.timestamps
    end
  end
end
