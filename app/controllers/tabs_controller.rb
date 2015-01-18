class TabsController < ApplicationController

	def index
		@tabs = Tab.all
		render json: @tabs
	end

	def new
		@tab = Tab.new
	end

	def create
		@tab = Tab.new tab_params
		@tab.date_of_purchase = Time.now
		@user = User.find(@tab.user_id)
		@vendor = Vendor.find(@tab.vendor_id)
		if @tab.save!
			render json: { tab: @tab, user: @user, vendor: @vendor }
		else
			p "error"
		end
	end

	def show
		@tab = Tab.find(params[:id])
		render json: @tab
	end

	def edit
		@tab = Tab.find(params[:id])
		@items = Item.all
		#do some editing
	end

	def update
		@tab = Tab.find(params[:id])
		# TODO validate vendor
		# if session[:id] == @tab.vendor_id
			@tab.paid = params[:tab][:paid]
			@tab.item_list << params[:tab][:item]
			item = Item.where(title: params[:item])[0]
			if item
				@tab.total += item.price
				# TODO: paid or not
				# @tab.paid = params[:item][:pad]
 			end
			@tab.save!
			render json: @tab
		# else
		# 	p "error"
		# 	#error
		# end
	end

	def destroy
		# do nothing yet
	end

	private

	def tab_params
    params.require(:tab).permit(:total, :user_id, :vendor_id, :item_list)
	end

end