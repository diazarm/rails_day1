class CreateProducts < ActiveRecord::Migration[8.0]
  def change
    create_table :products do |t|
      t.string :title
      t.text :description
      t.float :price

      t.timestamps
    end
  end
end

# rails generate model Product title:string description:text price:float
# con esta sentencia se creo el modelo en la db asignando los elementos y su tipo
# rails db:migrate es lo que hay que colocar para que impacte la migracion de la db

#rails console  <- Para crear un nuevo producto por consola, lo primero es activar la consola.
# Product.create(title: "Product 1", description: "Description 1", price:200)  <- Luego coloco la sig. sentencia para generar 1 prod. nuevo.

#con la consola activada (rails console)
# Product.all  <- para ver todos los productos
# Product.find(1)  <- para ver el producto con id 1
# Product.find_by(title: "Product 1")  <- para ver el producto con el titulo
# Product.where(title: "Product 1")  <- para ver todos los productos con el titulo
# Product.where(title: "Product 1").first  <- para ver el primer producto con el
# Product.where(title: "Product 1").last  <- para ver el ultimo producto con el
# Product.where(title: "Product 1").count  <- para ver la cantidad de productos con
# Product.where(title: "Product 1").destroy_all  <- para eliminar todos los productos con
# Product.where(title: "Product 1").update_all(price: 300)  <- para
# Product.where(title: "Product 1").update_all(price: 300, description: "
