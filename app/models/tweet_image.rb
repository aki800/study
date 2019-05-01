class TweetImage < ApplicationRecord
  belongs_to :tweet
  mount_uploader :image, TweetImageUploader
end
