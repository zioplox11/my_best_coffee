# == Schema Information
#
# Table name: steps
#
#  id                :integer          not null, primary key
#  name              :string(255)
#  description       :text             default("No description provided")
#  recipe_id         :integer
#  prep_time         :integer
#  cooking_time      :integer
#  total_time        :integer
#  multi_taskability :integer          default(0)
#  difficulty        :integer          default(0)
#  created_at        :datetime
#  updated_at        :datetime
#

class Step < ActiveRecord::Base
  has_and_belongs_to_many :appliances

  has_and_belongs_to_many :ingredients

  # has_many :comments, :as => :commentable

  belongs_to :recipe

  validates(:name,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  validates(:description,     { :presence     => true })

end
