require 'spec_helper'

describe Recipe do

  it { should have_many(:ingredients).through(:steps) }

  it { should have_many(:comments) }

  # it { should have_many(:comments).through(:commentables) }
  it { should have_many(:steps) }
  it { should have_many(:mybestcoffees) }

  it { should belong_to(:user) }


  it { should validate_presence_of(:title) }
  it { should validate_presence_of(:total_time) }
  it { should validate_presence_of(:author) }
  it { should validate_presence_of(:description) }

end







