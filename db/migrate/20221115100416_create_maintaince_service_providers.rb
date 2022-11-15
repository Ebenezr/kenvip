class CreateMaintainceServiceProviders < ActiveRecord::Migration[7.0]
  def change
    create_table :maintaince_service_providers do |t|

      t.timestamps
    end
  end
end
