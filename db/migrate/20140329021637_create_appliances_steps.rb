class CreateAppliancesSteps < ActiveRecord::Migration
  def change
    create_table :appliances_steps, id: false do |t|
      t.integer     :appliance_id
      t.integer     :step_id
    end
  end
end


