class CreateMascota < ActiveRecord::Migration
  def change
    create_table :mascota do |t|
      t.string :nombre
      t.string :edad
      t.string :raza
      t.references :servicio, index: true

      t.timestamps
    end
  end
end
