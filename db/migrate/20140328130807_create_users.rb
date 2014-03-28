class CreateUsers < ActiveRecord::Migration
  def change
    create_table :users do |t|
      t.string      :name
      t.string      :full_name
      t.string      :email
      t.integer     :admin_status
      t.string      :gender
      t.integer     :age
      t.date        :birthday
      t.string      :photo_url
      t.text        :description
      t.string      :password_digest
      t.timestamps
    end
  end
end
