class CreateProductos < ActiveRecord::Migration
  def change
    create_table :productos do |t|
      t.string :nombre
      t.text :descripcion
      t.integer :cantidad
      t.string :primer_imagen
      t.string :segunda_imagen

      t.timestamps null: false
    end
  end
end
