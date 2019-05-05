class Category < ApplicationRecord
  has_ancestry
  has_many :tweets
  has_many :category_users
  has_many :users, through: :category_users
end
