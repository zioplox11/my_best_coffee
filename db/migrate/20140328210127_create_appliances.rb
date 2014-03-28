class CreateAppliances < ActiveRecord::Migration
  def change
    create_table :appliances do |t|
      t.string      :name
      t.text        :description
      t.string      :amazon_purchase_link
      t.string      :wiki_link
      t.string      :photo_url
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

