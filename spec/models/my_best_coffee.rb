require 'spec_helper'

describe Mybestcoffee do
  it { should belong_to(:user) }
  it { should belong_to(:recipe) }
end

