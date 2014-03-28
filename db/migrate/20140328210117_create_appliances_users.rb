class CreateAppliancesUsers < ActiveRecord::Migration
  def change
    create_table :appliances_users do |t|
      t.integer   :appliance_id
      t.integer   :user_id
      t.timestamps
    end
  end
end
