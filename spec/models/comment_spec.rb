require 'spec_helper'

describe Comment do
  it { should belong_to(:user) }

  it { should belong_to(:recipe) }

  # it { should belong_to(:commentable) }


  # it { should belong_to(:recipes).through(:commentables) }
  # it { should belong_to(:steps).through(:commentables) }
  # it { should belong_to(:appliances).through(:commentables) }
  # it { should belong_to(:ingredients).through(:commentables) }


  it { should validate_presence_of(:description) }

end

