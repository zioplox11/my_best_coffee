class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text        :description
      t.integer     :user_id
      t.integer     :recipe_id
      t.integer     :step_id
      t.integer     :appliance_id
      t.integer     :ingredient_id
    end
  end
end
