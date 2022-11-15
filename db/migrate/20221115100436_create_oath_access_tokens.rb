class CreateOathAccessTokens < ActiveRecord::Migration[7.0]
  def change
    create_table :oath_access_tokens do |t|
      t.references :user, null: false, foreign_key: true
      t.references :client, null: false, foreign_key: true
      t.string :name
      t.string :scope
      t.integer :revoked
      t.date :expires_at

      t.timestamps
    end
  end
end
