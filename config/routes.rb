Rails.application.routes.draw do
   # delete '/products/:id', to: 'products#destroy'
   # patch '/products/:id', to: 'products#update'
   # post '/products', to: 'products#create'
   # get '/products/new', to: 'products#new', as: :new_product # ese as: :new_product es el helper para no tener que colocar la URL  (lo maneja el controlador en produicts_controller)
   # get '/products', to: 'products#index' #index muestra un conjunto de productos
   # get '/products/:id', to: 'products#show', as: :product  #show muetra un producto especifico
   # # cuando alguien vaya a /products, va a ir a un controlados (to:) y ese controlador en este caso products va a ir a un metodo #index (dentro de este metodo vamos a tener la logica para devolver todos los productos.)
   # get '/products/:id/edit', to: 'products#edit', as: :edit_product

   resources :products, path: '/'
end


#localhost:3000/rails/info/routes (muestra todas las rutas)