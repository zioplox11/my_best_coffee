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


list = User.show_all_names_and_emails
test_user = User.create({ name: "test", email: "test@tester.com", password: "password", password_confirmation: "password", admin_status: 5})
list2 = User.show_all_names_and_emails

  it "should return an up-to-date list of all users and their emails" do
    expect(list2.count).to eq(list.count + 2)

  end

test_user.destroy


end
