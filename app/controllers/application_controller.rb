class ApplicationController < ActionController::Base
  include SessionsHelper

  def dark
    cookies[:dark] = {
      value: 'darkmode on'
    }
    redirect_to(request.referrer || root_path)
  end

  def light
    cookies.delete(:dark)
    redirect_to(request.referrer || root_path)
  end
end
