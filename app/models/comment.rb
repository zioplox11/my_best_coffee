class Comment < ActiveRecord::Base
  belongs_to :user
  belongs_to :recipe
  belongs_to :step
  belongs_to :appliance
  belongs_to :ingredient

  validates(:description,     { :presence     => true })

end

