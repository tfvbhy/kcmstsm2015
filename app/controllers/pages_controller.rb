class PagesController < ApplicationController
  def login
  	if user_signed_in?
		redirect_to finances_path
	end
  end
  
  def traineeFinance
  end
end
