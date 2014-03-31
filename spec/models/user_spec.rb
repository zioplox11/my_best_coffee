# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  name            :string(255)      default("No name given")
#  full_name       :string(255)
#  email           :string(255)
#  admin_status    :integer          default(0)
#  gender          :string(255)
#  age             :integer
#  birthday        :date
#  photo_url       :string(255)
#  description     :text
#  password_digest :string(255)
#  created_at      :datetime
#  updated_at      :datetime
#

require 'spec_helper'

describe User do

  it { should have_many(:recipes) }
  it { should have_many(:comments) }
  it { should have_many(:mybestcoffees) }

end
