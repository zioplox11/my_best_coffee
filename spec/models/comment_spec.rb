require 'spec_helper'

describe Comment do
  it { should belong_to(:user) }
  it { should belong_to(:recipe) }
  it { should belong_to(:step) }
  it { should belong_to(:appliance) }
  it { should belong_to(:ingredient) }

  it { should validate_presence_of(:description) }

end

