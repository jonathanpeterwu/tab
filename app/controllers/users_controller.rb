class UsersController < ApplicationController
	def new
		@user = User.new
	end

	def create
		@user = User.create(params)
	end

	def show
		@user = User.find(id: params[:id])
	end

	def edit
		@user = User.find(id: params[:id])
		#do some editing
	end

	def update
		@user = User.create(params)
	end

end