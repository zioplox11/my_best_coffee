# == Schema Information
#
# Table name: ingredients
#
#  id                   :integer          not null, primary key
#  name                 :string(255)
#  section              :string(255)
#  description          :text
#  is_bean              :boolean
#  amazon_purchase_link :string(255)
#  wiki_link            :string(255)
#  photo_url            :string(255)
#  is_fair_trade        :boolean
#  is_organically_grown :boolean
#  grind                :string(255)
#  roast                :string(255)
#  origin               :string(255)
#  aroma                :integer
#  acidity              :integer
#  body                 :integer
#  flavor               :integer
#  aftertaste           :integer
#  rating_self          :decimal(2, 1)    default(0.0)
#  rating_all_users     :decimal(2, 1)    default(0.0)
#  created_at           :datetime
#  updated_at           :datetime
#

class Ingredient < ActiveRecord::Base

  has_many :recipes, through: :steps

  # has_many :comments, :as => :commentable

  has_and_belongs_to_many :steps

  validates(:name,     { :presence     => true })
  validates(:is_bean,     { :presence     => true })
  validates(:description,     { :presence     => true })



end




