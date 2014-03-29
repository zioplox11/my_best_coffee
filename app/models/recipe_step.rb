class Recipe_Step < ActiveRecord::Base
  has_many :comments
  has_many :appliances, :through => appliances_recipe_steps
  has_many :ingredients, :through => ingredients_recipe_steps
  belongs_to :recipes

  validates(:name,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:description,     { :presence     => true })

end
