class HomeController < ApplicationController
  before_filter :set_locale, :except => [:change_language]
  
  def home
    @slides = Slide.all
		respond_to do |format|
			format.html # home.html.erb
			format.js
		end 
	end

  def change_language
    language = params[:language]
    ref_url = request.referer
    if language == "fa" 
      ref_url = ref_url.gsub("/en/","/fa/")
      I18n.locale = :fa
    elsif language == "en"
      ref_url = ref_url.gsub("/fa/","/en/")
      I18n.locale = :en
    end 

    redirect_to ref_url
  end
end
