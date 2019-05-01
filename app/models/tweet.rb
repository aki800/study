class Tweet < ApplicationRecord
  belongs_to :user
  has_many :tweet_images
  accepts_nested_attributes_for :tweet_images
end
