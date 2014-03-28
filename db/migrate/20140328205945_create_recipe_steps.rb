class CreateRecipeSteps < ActiveRecord::Migration
  def change
    create_table :recipe_steps do |t|
      t.string  :name
      t.text    :description
      t.integer :prep_time
      t.integer :cooking_time
      t.integer :total_time
      t.integer :multi_taskability
      t.integer :difficulty
      t.timestamps
    end
  end
end

