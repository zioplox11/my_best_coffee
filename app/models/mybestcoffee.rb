# == Schema Information
#
# Table name: mybestcoffees
#
#  id               :integer          not null, primary key
#  user_id          :integer
#  recipe_id        :integer
#  restaurant_url   :string(255)
#  rating_self      :decimal(2, 1)    default(0.0)
#  rating_all_users :decimal(2, 1)    default(0.0)
#  created_at       :datetime
#  updated_at       :datetime
#

class Mybestcoffee < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
end
