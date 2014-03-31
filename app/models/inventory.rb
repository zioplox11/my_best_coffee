# == Schema Information
#
# Table name: inventories
#
#  appliance_id :integer
#  user_id      :integer
#  created_at   :datetime
#  updated_at   :datetime
#

class Inventory < ActiveRecord::Base
  belongs_to :appliance
  belongs_to :user
end
