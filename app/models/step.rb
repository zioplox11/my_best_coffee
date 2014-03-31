class Step < ActiveRecord::Base
  has_and_belongs_to_many :appliances

  has_and_belongs_to_many :ingredients

  # has_many :comments, :as => :commentable

  belongs_to :recipe

  validates(:name,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:description,     { :presence     => true })

end
