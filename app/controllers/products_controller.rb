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
      redirect_to products_path, notice: "Tu producto se ha creado correctamente"
    else
      render :new, status: :unprocessable_entity #renderiza pero solo con la resp. que devuelva al nav cod 422 (cuando no se pudo guardar algo en db)
    end

  end
  
  def edit
    @product=Product.find(params[:id])
   
  end
  
  def update
    @product=Product.find(params[:id])
    if @product.update(product_params)
      redirect_to products_path, notice: "Tu producto se ha actualizado correctamente"
    else
      render :edit, status: :unprocessable_entity #renderiza pero solo con la resp. que
    end
  end


  private

  def product_params
    params.require(:product).permit(:title, :price, :description)
  end
  
end
