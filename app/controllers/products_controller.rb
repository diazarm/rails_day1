#Aca creo el controlador de productsController, el que va a heredar de ApplicationController
class ProductsController < ApplicationController #en AppController esta toda la logica
  def index  #creamos el metodo 
    @products = Product.all  #
  end
  def show
    @product = Product.find(params[:id])
  end    
end
