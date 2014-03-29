class Recipe < ActiveRecord::Base
  has_many :comments
  has_many :my_best_coffees
  has_many :steps
  belongs_to :users

  validates(:title,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:author,     { :presence     => true })
  validates(:description,     { :presence     => true })


end


