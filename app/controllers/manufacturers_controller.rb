class ManufacturersController < ApplicaitonController

# EVERYTHING IS CURRENTLY GOING TO ROOT PATH 


def index 
  	@manufacturers = Manufacturer.all 
  end 



  def new
    @product = Product.find(params[:product_id])
  	@manufacturer = Manufacturer.new
  end


  def create
      @manufacturer = Manufacturer.new(manufacturer_params)
      @manufacturer.product_id = params[:product_id]
      if @manufacturer.save
        redirect_to root_path notice: 'Manufacturer was successfully created.'       
      else
        render :new
      end
  end


  def show
  	@manufacturer = Manufacturer.find(params[:id])
  	@product = @manufacturer.product
  end

  def update
    if @manufacturer.update(manufacturer_params)
        redirect_to root_path, notice: 'Manufacturer was successfully updated.'
      else
        render :edit 
      end
  end

  def edit
  	@manufacturer =Manufacturer.find(params[:id])
  end
end

def destroy
      @manufacturer = Manufacturer.find(params[:id])
      @manufacturer.destroy
      redirect_to root_path, notice: 'Manufacturer was successfully deleted.'
    end



private
    def manufacturer_params
      params.require(:manufacturer).permit(:name, :address )
    end





end 
