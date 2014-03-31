class CreateSteps < ActiveRecord::Migration
  def change
    create_table :steps do |t|
      t.string      :name
      t.text        :description,
                    :default => "No description provided"
      t.integer     :recipe_id
      t.integer     :prep_time
      t.integer     :cooking_time
      t.integer     :total_time
      t.integer     :multi_taskability,
                    :precision => 2, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.integer     :difficulty,
                    :precision => 2, # total number of digits
                    :scale     => 1,  # number of digits after decimal
                    :default   => 0   # default value if none specified
      t.timestamps
    end
  end
end

