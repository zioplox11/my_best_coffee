class CreateIngredients < ActiveRecord::Migration
  def change
    create_table :ingredients do |t|
      t.string      :name
      t.text        :description
      t.string      :bean_id
      t.string      :amazon_purchase_link
      t.string      :wiki_link
      t.string      :photo_url
      t.timestamps
    end
  end
end
