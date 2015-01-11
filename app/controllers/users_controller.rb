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

	private

  def user_params
    params.require(:user).permit(:name, :birthday, :image, :facebook_id)
  end
end


__END__
1) A user logins/signups for the first time (GET/POST users/new)
2) A user info route (GET users/:id)
3) A city based vendors route (GET vendors/:location)
4) A vendor view route (GET vendors/:id)
5) A checkin/checkout route (GET/POST users/:id/checkin/:vendor_id)
6) A vendor ratings route (GET/POST vendor_ratings/:rating)
