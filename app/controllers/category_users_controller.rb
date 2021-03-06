class CategoryUsersController < ApplicationController
  def show
    @category = Category.find(params[:category_id])
    @category_users = @category.category_users
    @category_user = @category_users.find(params[:id])
    @tweets = @category_user.user.tweets.where(category_id: @category.id).order("created_at DESC")
    @goal = @category_user.user.goals.where(category_id: @category.id).last
  end
end
