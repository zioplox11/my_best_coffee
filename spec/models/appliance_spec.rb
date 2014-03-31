# == Schema Information
#
# Table name: appliances
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  description          :text
#  section              :string(255)
#  amazon_purchase_link :string(255)
#  wiki_link            :string(255)
#  photo_url            :string(255)
#  rating_self          :decimal(2, 1)    default(0.0)
#  rating_all_users     :decimal(2, 1)    default(0.0)
#  created_at           :datetime
#  updated_at           :datetime
#

require 'spec_helper'

describe Appliance do
  it { should have_many(:inventories) }
  it { should have_many(:users).through(:inventories) }

  it { should have_many(:recipes).through(:steps) }

  it { should have_and_belong_to_many(:steps) }
  # it { should have_many(:comments).through(:commentables) }

end
