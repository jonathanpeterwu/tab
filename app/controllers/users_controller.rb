class UsersController < ApplicationController

	def index
		@users = User.all
		render json: @users
	end

	def new
		@user = User.new
	end

	def create
		#check parameters of user && is user admin to create || pay for bill
		@user = User.new
		@user.name = params[:user][:name]
		@user.birthday = params[:user][:birthday]
		@user.image = params[:user][:image]
		@user.facebook_id = params[:user][:facebook_id]
		if @user.save!
			render json: @user
		else
			p "error"
		end
	end

	def show
		@user = User.find(params[:id])
		render json: @user
	end

	def edit
		# is user authorized to edit user?
		@user = User.find(params[:id])
		if @user.id == session[:id]
			#update user
		else
			#redirect to error page
		end
	end

	def update
		@user = User.create(params)
	end

end