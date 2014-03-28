class CreateMyBestCoffees < ActiveRecord::Migration
  def change
    create_table :my_best_coffees do |t|
      t.integer   :user_id
      t.integer   :recipe_id
      t.string    :restaurant_url
      t.timestamps
    end
  end
end
