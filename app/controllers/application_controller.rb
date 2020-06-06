class ApplicationController < ActionController::Base
  def current_resume
    Resume.current
  end
end
