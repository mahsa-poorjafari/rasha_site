class HomeController < ApplicationController
	def home
		respond_to do |format|
			format.html # home.html.erb
			format.js
		end 
	end

end
