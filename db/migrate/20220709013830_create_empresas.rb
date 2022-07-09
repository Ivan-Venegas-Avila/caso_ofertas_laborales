class CreateEmpresas < ActiveRecord::Migration[6.1]
  def change
    create_table :empresas do |t|
      t.integer :rut, null: false
      t.text :razon_social, null: false
      t.text :representante_legal, null: false
      t.text :direccion, null: false
      t.integer :telefono, null: false

      t.timestamps
    end
  end
end
