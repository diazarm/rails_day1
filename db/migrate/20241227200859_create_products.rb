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
 