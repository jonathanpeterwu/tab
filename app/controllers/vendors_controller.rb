class VendorsController < ApplicationController
	def index
		@vendors = Vendor.all
		render json: @vendors
	end

	def new
		@vendor = Vendor.new
	end

	def create
		# is user authorized to create vendor
		@vendor = Vendor.new vendor_params
		if @vendor.save!
			render json: @vendor
		else
			p "error"
			#error
		end
	end

	def show
		@vendor = Vendor.find(params[:id])
		render json: @vendor
	end

	def edit
		# is user authorized to edit vendor
		@vendor = Vendor.find(params[:id])
	end

	def update
		@vendor = Vendor.create(params)
	end

	def destroy
		# do nothing yet
	end

	def vendors_by_location
		@vendors = Vendor.select { |v| v.locate == params[:location] }
		render json: @vendors
	end

	def items
		vendor = Vendor.find params[:id]
		items = vendor.items
		render json: {vendor: vendor.id, items: items}
	end

	def open_tabs
		vendor = Vendor.find params[:id]
		tabs = vendor.open_tabs
		render json: {tabs: tabs}
	end

	def nearby_users
		vendor = Vendor.find params[:id]
		users = User.by_location vendor.city
		render json: { vendor: vendor.id, users: users}
	end

	private

	def vendor_params
    params.require(:vendor).permit(:name, :description, :street_address1, :street_address2, :city, :state, :zip, :image)
	end
end