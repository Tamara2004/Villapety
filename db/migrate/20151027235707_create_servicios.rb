class CreateServicios < ActiveRecord::Migration
  def change
    create_table :servicios do |t|
      t.string :tratamiento
      t.string :valor
      t.date :cita
      t.string :producto

      t.timestamps
    end
  end
end
