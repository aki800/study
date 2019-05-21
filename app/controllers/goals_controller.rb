class GoalsController < ApplicationController
  before_action :set_category
  before_action :set_goal, only: [:edit, :update, :destroy]
  before_action :authenticate_user!

  def new
    @goal = Goal.new
  end

  def create
    @goal = @category.goals.create(goal_params)
    if @goal.save
      redirect_to category_tweets_path(@category.id)
    else
      render :new
    end
  end


  def edit
  end

  def update
    if @goal.update(goal_params)
      redirect_to category_tweets_path(@category.id)
    else
      render :edit
    end
  end

  def destroy
    if @goal.destroy
      redirect_to category_tweets_path(@category.id)
    else
      redirect_to category_tweets_path(@category.id)
    end
  end

  private
  def goal_params
    params.require(:goal).permit(:goal).merge(user_id: current_user.id)
  end

  def set_category
    @category = Category.find(params[:category_id])
  end

  def set_goal
    @goal = @category.goals.where(user_id: current_user.id).last
  end
end
