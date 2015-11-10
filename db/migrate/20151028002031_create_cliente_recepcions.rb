class CreateClienteRecepcions < ActiveRecord::Migration
  def change
    create_table :cliente_recepcions do |t|
      t.references :cliente, index: true
      t.references :recepcion, index: true

      t.timestamps
    end
  end
end
