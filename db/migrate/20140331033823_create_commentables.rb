class CreateCommentables < ActiveRecord::Migration
  def change
    create_table :commentables do |t|
      # t.integer :recipe_id
      # t.integer :appliance_id
      # t.integer :step_id
      # t.integer :ingredient_id
    end
  end
end
