class ApplicationController < ActionController::Base
  protect_from_forgery
  unless Rails.application.config.consider_all_requests_local             
    rescue_from ActionController::RoutingError, ActionController::UnknownController, ::AbstractController::ActionNotFound, ActiveRecord::RecordNotFound, with: lambda { |exception| render_error 404, exception }
  end

  private
  def render_error(status, exception)
    Rails.logger.error status.to_s + " " + exception.message.to_s
    Rails.logger.error exception.backtrace.join("\n") 
    respond_to do |format|
      format.html { render template: "errors/error_#{status}",status: status }
      format.all { render nothing: true, status: status }
    end
  end


  def hello
    ActiveSupport::Deprecation.silenced = true # to disablee deprications logs
    render html: "Hello"
  end
  
end
