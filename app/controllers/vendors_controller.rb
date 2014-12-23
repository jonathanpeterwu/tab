class VendorsController < ApplicationController
	def new
		@vendor = Vendor.new
	end

	def create
		@vendor = Vendor.create(params)
	end

	def show
		@vendor = Vendor.find(id: params[:id])
	end

	def edit
		@vendor = Vendor.find(id: params[:id])
		#do some editing
	end

	def update
		@vendor = Vendor.create(params)
	end

	def destroy
		# do nothing yet
	end

end