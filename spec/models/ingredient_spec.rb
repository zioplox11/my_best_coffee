require 'spec_helper'

describe Ingredient do
  # it { should have_many(:ingredients_steps) }
  # it { should have_many(:steps).through(:ingredients_steps) }

  # it { should have_many(:recipes).through(:steps) }

  it { should have_many(:comments) }

  it { should validate_presence_of(:name) }
  it { should validate_presence_of(:is_bean) }
  it { should validate_presence_of(:type) }
end

