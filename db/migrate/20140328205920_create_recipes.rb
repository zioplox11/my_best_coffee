class CreateRecipes < ActiveRecord::Migration
  def change
    create_table :recipes do |t|
      t.string      :title
      t.string      :author
      t.string      :source_url
      t.text        :description
      t.boolean     :is_iced
      t.integer     :servings
      t.decimal     :rating_self,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.decimal     :rating_all_users,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.integer     :prep_time
      t.integer     :cooking_time
      t.integer     :total_time
      t.decimal     :multi_taskability,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.decimal     :difficulty,
                    :precision => 1, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.timestamps
    end
  end
end

