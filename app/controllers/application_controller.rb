class ApplicationController < ActionController::Base

  def after_sign_in_path_for(_resource)
    authenticated_root_path
  end
end