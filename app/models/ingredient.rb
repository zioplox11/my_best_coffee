class Ingredient < ActiveRecord::Base
  has_many :recipe_steps, :through => ingredients_recipe_steps
  has_many :recipes, :through => recipe_steps
  has_many :comments

  validates(:name,     { :presence     => true })
  validates(:is_bean,     { :presence     => true })
  validates(:type,     { :presence     => true })

end




