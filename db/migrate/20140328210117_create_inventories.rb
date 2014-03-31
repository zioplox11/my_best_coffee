class CreateInventories < ActiveRecord::Migration
  def change
    create_table :inventories,  id: false do |t|
      t.integer     :appliance_id
      t.integer     :user_id
      t.timestamps
    end
  end
end
