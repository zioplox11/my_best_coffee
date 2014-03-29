class CreateIngredientsRecipeSteps < ActiveRecord::Migration
  def change
    create_table :ingredients_recipe_steps do |t|
      t.integer     :recipe_steps_id
      t.integer     :ingredient_id
    end
  end
end
