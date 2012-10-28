class ApplicationController < ActionController::Base
  protect_from_forgery

  layout :switch_layout

  before_filter :authenticate_user!

  private

  def switch_layout
    unless current_user.blank?
      "dashboard"
    else
      "application"
    end
  end
end
