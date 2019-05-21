class TweetImage < ApplicationRecord
  belongs_to :tweet, optional: true
  mount_uploader :image, TweetImageUploader
end
