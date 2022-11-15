class CreateOauthPersonalAccessClients < ActiveRecord::Migration[7.0]
  def change
    create_table :oauth_personal_access_clients do |t|
      t.references :client, null: false, foreign_key: true

      t.timestamps
    end
  end
end
