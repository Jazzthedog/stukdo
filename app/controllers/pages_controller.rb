class PagesController < ApplicationController
  def home
  	if current_user 
  		redirect_to tasks_path
  	end
  end

  def about
  end

  def test
  end

  def archive
  	 @archive = current_user.tasks.where(state: "archive")
  end
end
