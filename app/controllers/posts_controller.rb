class PostsController < ApplicationController
 
  	def index

  		if !College.exists?(collegename: params[:college])
  			redirect_to root_path
  		end

		@postNew = Post.new
		@post = Post.where(college: params[:college])
		

	end

	def create
			
			if params[:mode] == '0'
				@p = Post.create(
					content: params[:content],
					user_id: current_user.id ,
					college: params[:college]
					)
			else @p = Post.create(
					content: params[:content],
					user_id: "2" ,
					college: params[:college]
					)
			end
			redirect_to action: 'index'  
	end

	def destroy
		
		@post = Post.find(params[:id])
		@post.destroy
		redirect_to action: 'index' 
		

	end

  end

