class User < ActiveRecord::Base
  has_many :recipes
  has_many :inventories
  has_many :appliances, through: :inventories
  has_many :mybestcoffees
  # has_many :comments, :as => :commentable
  has_many :comments


  has_secure_password

  validates(:name,     { :presence     => true })
  validates(:admin_status,     { :presence     => true })
  validates(:email,    { :uniqueness   => { case_sensitive: false }})


end
