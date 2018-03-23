class CommentsController < ApplicationController


  def create
  	if params[:mode] == '0'
  		@comment = Comment.create(
  				content: params[:content],
  				user_id: current_user.id,
  				post_id: params[:post_id],
  			)
  	else @comment = Comment.create(
  				content: params[:content],
  				user_id: '2',
  				post_id: params[:post_id],
  			)
  	end

  end
end
