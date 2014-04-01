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

end







