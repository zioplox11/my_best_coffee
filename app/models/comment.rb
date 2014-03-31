class Comment < ActiveRecord::Base
  belongs_to :user
  # belongs_to :commentable, :polymorphic => true
  belongs_to :recipe

  validates(:description,     { :presence     => true })

end

