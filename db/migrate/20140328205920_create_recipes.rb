class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string  :title
      t.string  :author
      t.integer :prep_time
      t.integer :cooking_time
      t.integer :total_time
      t.integer :multi_taskability
      t.integer :difficulty
      t.timestamps
    end
  end
end

