class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  private
    def set_locale
      params[:locale] == "en" ?  I18n.locale = "en" : I18n.locale = "fa"
      Rails.application.routes.default_url_options[:locale] = I18n.locale 
    end  
end
