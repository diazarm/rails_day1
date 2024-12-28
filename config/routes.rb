Rails.application.routes.draw do
   get '/products', to: 'products#index' #index muestra un conjunto de productos
   get '/products/:id', to: 'products#show', as: :product  #show muetra un producto especifico
   # cuando alguien vaya a /products, va a ir a un controlados (to:) y ese controlador en este caso products va a ir a un metodo #index (dentro de este metodo vamos a tener la logica para devolver todos los productos.)
end


#localhost:3000/rails/info/routes (muestra todas las rutas)