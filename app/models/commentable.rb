# == Schema Information
#
# Table name: commentables
#
#  id :integer          not null, primary key
#

class Commentable < ActiveRecord::Base
  # belongs_to :comments, polymorphic: true
  # belongs_to :user

end
