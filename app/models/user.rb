class User < ActiveRecord::Base
  has_many :recipes
  has_many :appliances, :through => appliances_users
  has_many :my_best_coffees
  has_many :comments

  has_secure_password

  validates(:name,     { :presence     => true })
  validates(:admin_status,     { :presence     => true })
  validates(:email,    { :uniqueness   => { case_sensitive: false }})


end
