class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :set_locale

  private
    def set_locale
      params[:locale] == "fa" ? I18n.locale = "fa" : I18n.locale = "en"
    end  
end
