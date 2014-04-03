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

require 'spec_helper'

describe Recipe do

  it { should have_many(:ingredients).through(:steps) }

  it { should have_many(:appliances).through(:steps) }

  it { should have_many(:comments) }

  # it { should have_many(:comments).through(:commentables) }
  it { should have_many(:steps) }
  it { should have_many(:mybestcoffees) }

  it { should belong_to(:user) }


  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:total_time) }
  # it { should validate_presence_of(:author) }
  # it { should validate_presence_of(:description) }

my_recipe = Recipe.new(title: 'test', total_time: 25)
num_steps = my_recipe.steps.length
total_recipe_time_initial = my_recipe.total_step_time
my_step1 = Step.new(name: 'step 1', total_time: 5)
my_recipe.steps << my_step1
my_step2 = Step.new(name: 'step 2', total_time: 7)
my_recipe.steps << my_step2
num_steps2 = my_recipe.steps.length
total_recipe_time_based_on_steps = my_recipe.total_step_time

  it "should be able to have additional recipe steps added to it" do
    expect(num_steps2).to eq(num_steps + 2)
  end

  it "should have a intitial user estimated totalrecipe time that is overwritten by the actual step by step recipe time as user adds recipe steps with their individual times" do
    expect(total_recipe_time_initial).to eq(13 + total_recipe_time_based_on_steps)

  end

my_step1.destroy
my_step2.destroy
my_recipe.destroy


end







