require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest # trae la logica p/hacer el test de un contolador
  test 'render a list of products' do
    get products_path

    assert_response :success     #pedimos que la respuesta sea correcta, osea que se renderizan los productos
    assert_select '.product', 2  #le colocamos la cant de productos a evaluar
  end

  test 'render a detailed product page' do

  end
end