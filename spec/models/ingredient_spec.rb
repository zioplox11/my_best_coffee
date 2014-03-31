require 'spec_helper'

describe Ingredient do

  it { should have_and_belong_to_many(:steps) }

  it { should have_many(:recipes).through(:steps) }

  # it { should have_many(:comments).through(:commentables) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:is_bean) }
  it { should validate_presence_of(:description) }
end

