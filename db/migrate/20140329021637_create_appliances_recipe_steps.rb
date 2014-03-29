class CreateAppliancesRecipeSteps < ActiveRecord::Migration
  def change
    create_table :appliances_recipe_steps do |t|
      t.integer     :appliance_id
      t.integer     :recipe_step_id
    end
  end
end
