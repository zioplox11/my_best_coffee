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

class User < ActiveRecord::Base
  has_many :recipes
  has_many :inventories
  has_many :appliances, through: :inventories
  has_many :mybestcoffees
  # has_many :comments, :as => :commentable
  has_many :comments


  has_secure_password

  # validates(:name,     { :presence     => true })
  validates(:admin_status,     { :presence     => true })
  validates(:email,    { :uniqueness   => { case_sensitive: false }})

  def self.show_all_names_and_emails
    users = User.all
    names = []
    emails = []
    name_and_emails=[]
    users.each do |user|
      name_and_emails << user.name
      name_and_emails << user.email
      display = name_and_emails.join(", ")
    end
    name_and_emails
  end


end
