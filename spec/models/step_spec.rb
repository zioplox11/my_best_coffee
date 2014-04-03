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

require 'spec_helper'

describe Step do

  it { should have_and_belong_to_many(:ingredients) }

  it { should have_and_belong_to_many(:appliances) }

  # it { should have_many(:comments).through(:commentables) }



end
