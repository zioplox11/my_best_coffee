# == Schema Information
#
# Table name: appliances
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  description          :text
#  section              :string(255)
#  amazon_purchase_link :string(255)
#  wiki_link            :string(255)
#  photo_url            :string(255)
#  rating_self          :decimal(2, 1)    default(0.0)
#  rating_all_users     :decimal(2, 1)    default(0.0)
#  created_at           :datetime
#  updated_at           :datetime
#

class Appliance < ActiveRecord::Base
  has_many :inventories
  has_many :users, through: :inventories
  # has_many :comments, :as => :commentables
  has_and_belongs_to_many :steps


  validates(:name,  { :presence => true } )
  validates(:description, { :presence => true } )

end
