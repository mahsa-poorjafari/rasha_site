class HomeController < ApplicationController
	def home
    @slides = Slide.all
		respond_to do |format|
			format.html # home.html.erb
			format.js
		end 
	end
  
  def homedesign
    @slides = Slide.all
		respond_to do |format|
			format.html # home.html.erb
			format.js
		end 
	end

  def change_language
    language = params[:language]
    I18n.locale = language if language == "fa" or language == "en"
    
    redirect_to :back and return
  end
end
