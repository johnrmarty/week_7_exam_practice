class ProductsController < ApplicationController

# EVERYTHING IS CURRENTLY GOING TO ROOT PATH 

def index
  	@products = Product.all
  end

  def new
  	@product = Product.new
  end

  def create
      @product = Product.new(product_params)
      if @product.save
          redirect_to root_path, notice: 'Product was successfully created.' 
      else
       render :new 
      end
  end

    def update
      @product = Product.find(params[:id])
    if @product.update(product_params)
        redirect_to root_path, notice: 'Product was successfully updated.'
      else
        render :edit 
      end
  end



  def show
  	@product = Product.find(params[:id])
  end

  def edit
  	@product = Product.find(params[:id])
  end

def destroy
      @product = Product.find(params[:id])
      @product.destroy
      redirect_to root_path, notice: 'Product was successfully deleted.'
    end

private
    def pro_params
      params.require(:product).permit(:name, :description, :requires_id)
    end
end 





















end 

