class TweetsController < ApplicationController
  def index
    @tweets = Tweet.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @tweet_images = 4.times { @tweet.tweet_images.build }
  end

  def create
    @tweet = Tweet.create(tweet_params)
    if @tweet.save
      redirect_to tweets_path
    else
      render :new
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, tweet_images_attributes: [:image]).merge(user_id: current_user.id)
  end
end
