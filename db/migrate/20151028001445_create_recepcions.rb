class CreateRecepcions < ActiveRecord::Migration
  def change
    create_table :recepcions do |t|
      t.string :nombre
      t.string :apellido
      t.string :cargo
      t.string :telefono

      t.timestamps
    end
  end
end
