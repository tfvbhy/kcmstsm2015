class PagesController < ApplicationController
  def login
  	if user_signed_in?
		redirect_to traineeFinance_path
	end
  end
  
  def traineeFinance
  end
end
