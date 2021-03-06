require_relative ("../models/step.rb")

# == Schema Information
#
# Table name: recipes
#
#  id                :integer          not null, primary key
#  title             :string(255)
#  user_id           :integer
#  author            :string(255)
#  source_url        :string(255)
#  photo_url         :string(255)
#  description       :text
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


  def steps_deep_dup()

    new_steps = self.steps.collect do |step|
      my_step = step.dup()
      my_step.save
    end

    return new_steps

  end


  def dup_recipe()
    dup_steps = self.steps_deep_dup
    new_appliances = nil
    new_steps = nil
    self.steps.each do |step|
      new_appliances = step.appliances_deep_dup
      new_ingredients = step.ingredients_deep_dup
    end
    my_recipe = self.dup
    my_recipe.save
    my_recipe.steps.ingredients << new_ingredients
    my_recipe.steps.appliances << new_appliances

    return my_recipe

  end




  # def self.admin_approved_recipes
  #     recipes = User.all.select do |recipe|
  #         recipe.admin_status >=3
  #     end
  #     @recipes = recipes
  # end


end


