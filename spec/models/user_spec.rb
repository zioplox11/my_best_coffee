require 'spec_helper'

describe User do

  it { should have_many(:recipes) }
  it { should have_many(:comments) }
  it { should have_many(:mybestcoffees) }

end
