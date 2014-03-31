# == Schema Information
#
# Table name: comments
#
#  id          :integer          not null, primary key
#  description :text
#  recipe_id   :integer
#  user_id     :integer
#

class Comment < ActiveRecord::Base
  belongs_to :user
  # belongs_to :commentable, :polymorphic => true
  belongs_to :recipe

  validates(:description,     { :presence     => true })

end

