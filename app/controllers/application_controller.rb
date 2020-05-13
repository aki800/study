class ApplicationController < ActionController::Base
  before_action :configure_permitted_parameters, if: :devise_controller?

  def configure_permitted_parameters
    devise_parameter_sanitizer.permit(:sign_up, keys: [:nickname, :image])

    devise_parameter_sanitizer.permit(:account_update, keys: [:nickname, :image])
  end

  def after_sign_in_path_for(resource)
    if current_user.categories.present?
      category_tweets_path(current_user.categories[0])
    else
      root_path
    end
  end

end
