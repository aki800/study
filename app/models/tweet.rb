class Tweet < ApplicationRecord
  belongs_to :user, optional: :true
  belongs_to :category, optional: true
  has_many :tweet_images, dependent: :destroy
  accepts_nested_attributes_for :tweet_images
end
