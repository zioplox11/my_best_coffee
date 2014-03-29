class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string      :name
      t.string      :type
      t.text        :description
      t.boolean     :is_bean
      t.string      :amazon_purchase_link
      t.string      :wiki_link
      t.string      :photo_url
      t.boolean     :is_fair_trade
      t.boolean     :is_organically_grown
      t.string      :grind
      t.string      :roast
      t.string      :origin
      t.integer     :aroma
      t.integer     :acidity
      t.integer     :body
      t.integer     :flavor
      t.integer     :aftertaste
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
