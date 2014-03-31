class Ingredient < ActiveRecord::Base

  has_many :recipes, through: :steps

  # has_many :comments, :as => :commentable

  has_and_belongs_to_many :steps

  validates(:name,     { :presence     => true })
  validates(:is_bean,     { :presence     => true })
  validates(:description,     { :presence     => true })

end




