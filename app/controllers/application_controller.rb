class ApplicationController < ActionController::Base
  protect_from_forgery

  helper_method :get_projects

  def get_projects
    Project.all
  end
end
