#Aca creo el controlador de productsController, el que va a heredar de ApplicationController
class ProductsController < ApplicationController #en AppController esta toda la logica
  
  def index  #creamos el metodo 
    @products = Product.all  #
  end
  
  def show
    @product = Product.find(params[:id])
  end

  def new
    @product = Product.new
  end

  def create
    @product = Product.new(product_params)
    
    if @product.save
      redirect_to products_path
    else
      render :new 
    end
  end

  private

  def product_params
    params.require(:product).permit(:title, :price, :description)
  end

end
