class ProductsController < ApplicationController
	def new
		 @create_v = Product.new # should be equle to variable of create fun
		#@categories = Category.all.map{|c| [ c.name, c.id ] }
	end
 
	def create
		#byebug
		#render plain: params[:products].inspect
		@create_v = Product.new(create_params)
		@create_v.category = params[:category]
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


	def update
		@update_v = Product.find(params[:id])
 
  if @update_v.update(create_params)
  	#@update_v.save
    redirect_to @update_v
  else
    render 'edit'
  end
end
  

  def geeta
  	@destroy_v = Product.find(params[:my_id])
  	#@destroy_v.category = params[:category]
  	@destroy_v.destroy
  	redirect_to products_path
  end

	private
	def create_params
		params.require(:products).permit(:product_name, :description ,:start_date, :end_date, :quantity, :category)
	end
end
