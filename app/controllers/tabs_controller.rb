class TabsController < ApplicationController

	def index
		@tabs = Tab.all
		render json: @tabs
	end

	def new
		@tab = Tab.new
	end

	def create
		#check parameters of tabs
		@tab = Tab.new
		@tab.total = params[:tab][:total]
		@tab.date_of_purchase = Time.now
		@tab.user_id = params[:tab][:user_id]
		@tab.vendor_id = params[:tab][:vendor_id]
		@tab.item_list = params[:tab][:item_list]
		@tab.paid
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

end