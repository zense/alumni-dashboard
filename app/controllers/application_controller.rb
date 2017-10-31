class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  def after_sign_in_path_for(resource)
    if current_alumnus.admin == true
      rails_admin.dashboard_path
    else
      root_path
    end
  end
end
