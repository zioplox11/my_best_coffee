class Appliance < ActiveRecord::Base
  has_many :appliances_users
  has_many :users, :through => appliances_users
  has_many :appliances_steps
  has_many :steps, :through => appliances_steps
  has_many :comments

  validates(:name,  { :presence => true } )
  validates(:type, { :presence => true } )

end
