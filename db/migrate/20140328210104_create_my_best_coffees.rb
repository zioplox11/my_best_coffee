class CreateMyBestCoffees < ActiveRecord::Migration
  def change
    create_table :my_best_coffees do |t|
      t.integer     :user_id
      t.integer     :recipe_id
      t.string      :restaurant_url
      t.decimal     :rating_self,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.decimal     :rating_all_users,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.timestamps
    end
  end
end
