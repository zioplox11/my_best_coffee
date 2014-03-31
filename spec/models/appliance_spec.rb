require 'spec_helper'

describe Appliance do
  it { should have_many(:inventories) }
  it { should have_many(:users).through(:inventories) }

  it { should have_and_belong_to_many(:steps) }
  # it { should have_many(:comments).through(:commentables) }

end
