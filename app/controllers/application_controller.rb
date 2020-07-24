class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def hello
    ActiveSupport::Deprecation.silenced = true # to disablee deprications logs
    render html: "Hello"
  end



end
