class Category < ApplicationRecord
  has_ancestry
  has_many :tweets, dependent: :destroy
  has_many :category_users, dependent: :destroy
  has_many :users, through: :category_users
  has_many :goals, dependent: :destroy
end
