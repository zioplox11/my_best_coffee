class ApplianceStep < ActiveRecord::Base
  belongs_to :appliance
  belongs_to :step
end
