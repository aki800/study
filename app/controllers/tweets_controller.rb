class TweetsController < ApplicationController
  before_action :set_category
  before_action :set_tweet, only: [:edit, :update, :destroy]
  before_action :authenticate_user!
  def index
    unless @category.user_ids.include?(current_user.id)
      @category.users << current_user
    end
    @tweets = @category.tweets.includes(:user).order("created_at DESC")
  end

  def new
    @tweet = Tweet.new
    @tweet_images = 4.times { @tweet.tweet_images.build }
  end

  def create
    @tweet = @category.tweets.create(tweet_params)
    if @tweet.save
      redirect_to category_tweets_path(@category.id)
    else
      render :new
    end
  end

  def edit
    img_num = 4 - @tweet.tweet_images.length
    @tweet_images = img_num.times { @tweet.tweet_images.build }
  end

  def update
    if @tweet.update(tweet_params)
      redirect_to category_tweets_path
    else
      render "edit"
    end
  end

  def destroy
    if @tweet.destroy
      redirect_to category_tweets_path
    else
      root_path
    end
  end

  private
  def tweet_params
    params.require(:tweet).permit(:text, tweet_images_attributes: [:image]).merge(user_id: current_user.id)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_tweet
    @tweet = Tweet.find(params[:id])
  end
end
