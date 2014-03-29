class Appliance < ActiveRecord::Base
  has_many :users, :through => appliances_users
  has_one :recipes, :through => recipe_steps
  has_many :recipe_steps, :through => appliances_recipe_steps
  has_many :comments

  validates(:name,  { :presence => true } )
  validates(:type, { :presence => true } )

end

