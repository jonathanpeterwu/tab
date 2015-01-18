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
		@user = User.new user_params
		if @user.save!
			render json: @user
		else
			p "error"
		end
	end

	def show
		@user = User.find(params[:id])
		respond_to do |format|
			format.json {render json: @user}
			format.html
		end
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
		user = User.find params[:id]
	end

	def save_coordinates
		user = User.find params[:id]
		# TODO - get location from cookie or phone location or ?
		lat_long = "[47.6097, 122.3331]"
		user.location_history.push lat_long
		user.save!
		render json: user
	end



	private

  def user_params
    params.require(:user).permit(:first_name, :last_name, :birthday, :image, :facebook_id)
  end
end

