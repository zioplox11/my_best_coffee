require 'spec_helper'

describe Step do

  it { should have_and_belong_to_many(:ingredients) }

  it { should have_and_belong_to_many(:appliances) }

  # it { should have_many(:comments).through(:commentables) }

end
