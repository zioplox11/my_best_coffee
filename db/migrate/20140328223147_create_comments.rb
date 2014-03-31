class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text        :description
      t.integer     :recipe_id
      # t.integer     :commentable_id
      # t.string      :commentable_type
      t.integer     :user_id
    end
  end
end
