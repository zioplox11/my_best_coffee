class Ingredient < ActiveRecord::Base
  has_many :ingredients_steps
  has_many :steps, :through => ingredients_steps
  has_many :comments

  validates(:name,     { :presence     => true })
  validates(:is_bean,     { :presence     => true })
  validates(:type,     { :presence     => true })

end




