class CollegesController < ApplicationController

	def index
		@collegeNew = College.new
		@college = College.all
	end

	def create
		@college = College.create(
				collegename: params[:college][:collegename],
			)
		redirect_to action: 'index'
	end

	def destroy
		@college = College.find(params[:id])
		@college.destroy
		redirect_to action: 'index'
	end

	


end
