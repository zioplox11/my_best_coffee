# == Schema Information
#
# Table name: recipes
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  user_id           :integer
#  author            :string(255)      default("No author attributed")
#  source_url        :string(255)
#  photo_url         :string(255)
#  description       :text             default("No description given")
#  is_iced           :boolean
#  servings          :integer
#  rating_self       :decimal(2, 1)    default(0.0)
#  rating_all_users  :decimal(2, 1)    default(0.0)
#  prep_time         :integer
#  cooking_time      :integer
#  total_time        :integer
#  multi_taskability :decimal(2, 1)    default(0.0)
#  difficulty        :decimal(2, 1)    default(0.0)
#  created_at        :datetime
#  updated_at        :datetime
#

class Recipe < ActiveRecord::Base
  # has_many :comments, :as => :commentable
  has_many :comments
  has_many :mybestcoffees
  has_many :steps
  has_many :ingredients, through: :steps
  has_many :appliances, through: :steps
  belongs_to :user

  validates(:title,     { :presence     => true })
  validates(:total_time,     { :presence     => true })
  # validates(:author,     { :presence     => true })
  # validates(:description,     { :presence     => true })



  def total_step_time()
    if self.steps.length == 0
      return total_step_time = self.total_time
    else
      total_step_time = 0
      self.steps.each do |step|
        total_step_time += step.total_time
      end
      return total_step_time
    end
  end


end


