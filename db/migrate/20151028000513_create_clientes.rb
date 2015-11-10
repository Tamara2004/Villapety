class CreateClientes < ActiveRecord::Migration
  def change
    create_table :clientes do |t|
      t.string :nombre
      t.string :apellido
      t.string :correo
      t.string :direccion
      t.references :mascota, index: true

      t.timestamps
    end
  end
end
