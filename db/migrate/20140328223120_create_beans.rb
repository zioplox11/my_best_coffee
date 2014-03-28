class CreateBeans < ActiveRecord::Migration
  def change
    create_table :beans do |t|
      t.string      :name
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
    end
  end
end


