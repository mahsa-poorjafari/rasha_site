class HomeController < ApplicationController
	def home
    @slides = Slide.all
		respond_to do |format|
			format.html # home.html.erb
			format.js
		end 
	end

end
