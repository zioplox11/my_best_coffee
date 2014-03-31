class Appliance < ActiveRecord::Base
  has_many :inventories
  has_many :users, through: :inventories
  # has_many :comments, :as => :commentables
  has_and_belongs_to_many :steps


  validates(:name,  { :presence => true } )
  validates(:description, { :presence => true } )

end
