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

	private

	def vendor_params
    params.require(:vendor).permit(:name, :description, :address, :image)
	end
end