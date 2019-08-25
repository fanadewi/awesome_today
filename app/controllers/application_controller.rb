class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :site_title

  def site_title
    @site_title = 'Awesome Today'
  end
end
