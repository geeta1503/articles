class ProductsController < ApplicationController
	def new
	end

	def create
		#render plain: params[:products].inspect
		@create_v = Product.new(create_params)
		@create_v.save
		redirect_to @create_v
	end
	def index
		@index_v = Product.all
	end
	def show
		@show_v = Product.find(params[:id])
	end
	def edit
		@edit_v = Product.find(params[:id])
		
	end
	private
	def create_params
		params.require(:products).permit(:product_name, :description ,:start_date, :end_date, :quantity)
	end
end
