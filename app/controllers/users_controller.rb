class UsersController < ApplicationController
  def profile

  	@post = Post.where(user_id: params[:id])
  	
  end
end
