class ApplicationController < ActionController::Base
  protect_from_forgery
 
  
  protected
    def check_autentication
      redirect_to :root unless session[:admin].present?
    end  
   
end
