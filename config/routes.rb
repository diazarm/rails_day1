Rails.application.routes.draw do
   get '/products', to: 'products#index'
   # cuando alguien vaya a /products, va a ir a un controlados (to:) y ese controlador en este caso products va a ir a un metodo #index (dentro de este metodo vamos a tener la logica para devolver todos los productos.)
end
