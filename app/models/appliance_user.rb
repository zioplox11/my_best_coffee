class ApplianceUser < ActiveRecord::Base
  belongs_to :appliance
  belongs_to :user
end
