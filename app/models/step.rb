class Step < ActiveRecord::Base
  has_many :appliances_steps
  has_many :appliances, :through => appliances_steps
  has_many :ingredients_steps
  has_many :ingredients, :through => ingredients_steps
  belongs_to :recipes
  has_many :comments

  validates(:name,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:description,     { :presence     => true })

end
