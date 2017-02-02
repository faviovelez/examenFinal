class RemovePrimeraImagenToProducto < ActiveRecord::Migration
  def change
    remove_column :productos, :primer_imagen, :string
    remove_column :productos, :segunda_imagen, :string
  end
end
