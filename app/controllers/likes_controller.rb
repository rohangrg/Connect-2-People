class LikesController < ApplicationController

	def create
		
		likeExist = Like.exists?(user: current_user , parent_id: params[:parent_id] , parent_type: params[:parent_type])  
		
		if(!likeExist)
			@like = Like.create(
					user_id: current_user.id,
					parent_id: params[:parent_id],
					parent_type: params[:parent_type],
				)
		else
			@like = Like.where(user_id: current_user.id , parent_id: params[:parent_id] , parent_type: params[:parent_type])[0]
			@like.destroy

		end

		# redirect_to posts_path , college: params[:college]
	end





end