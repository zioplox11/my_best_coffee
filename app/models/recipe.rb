class Recipe < ActiveRecord::Base
  # has_many :comments, :as => :commentable
  has_many :comments
  has_many :mybestcoffees
  has_many :steps
  has_many :ingredients, through: :steps
  belongs_to :user

  validates(:title,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:author,     { :presence     => true })
  validates(:description,     { :presence     => true })


end


