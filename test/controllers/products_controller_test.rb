require 'test_helper'

class ProductsControllerTest < ActionDispatch::IntegrationTest # trae la logica p/hacer el test de un contolador
  test 'render a list of products' do
    get products_path

    assert_response :success     #pedimos que la respuesta sea correcta, osea que se renderizan los productos
    assert_select '.product', 2  #le colocamos la cant de productos a evaluar
  end

  test 'render a detailed product page' do
    get product_path(products(:one))

    assert_response :success     #pedimos que la respuesta sea correcta, osea que se renderizan los productos
    assert_select '.title', 'Iphone usado'
    assert_select '.description', 'telefono usado por varias personas' 
    # assert_select 'price', 200
  end

  test 'render a new product form' do
    get new_product_path
    assert_response :success     #pedimos que la respuesta sea correcta, osea que se
    assert_select 'form'
  end

  test 'allow to create a new product' do
    post products_path, params: {
      product: {
        title: 'Iphone nuevo',
        description: 'telefono nuevo por varias personas',
        price: 200  
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Tu producto se ha creado correctamente'
  end

  test 'does not allow to create a new product with empty fields' do
      post products_path, params: {
        product: {
          title: '',
          description: 'telefono nuevo por varias personas',
          price: 200  
        }
      }
  
      assert_response :unprocessable_entity #devuelve el status 422
  end

  test 'render an edit product form' do
    get edit_product_path(products(:one))
    assert_response :success     #pedimos que la respuesta sea correcta, osea que se
    assert_select 'form'
  end

  test 'allow to update a product' do
    patch product_path(products(:one)), params: {
      product: {
        title: 'Iphone nuevo',
        description: 'telefono nuevo por varias personas',
        price: 250  
      }
    }

    assert_redirected_to products_path
    assert_equal flash[:notice], 'Tu producto se ha actualizado correctamente'
  end

  test 'does not allow to update a product with an invalid field' do
    patch product_path(products(:one)), params:{
      product:{
        price: nil
      }
    }

    assert_response :unprocessable_entity
  end

  test 'can delete products' do
    assert_difference('Product.count', -1) do
      delete product_path(products(:one))
    end
  
    assert_redirected_to products_path # Verifica que redirige al índice de productos
    assert_equal 'Tu producto se ha eliminado correctamente', flash[:notice] # Verifica el mensaje flash
  end
  
end