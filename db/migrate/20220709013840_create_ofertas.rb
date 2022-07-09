class CreateOfertas < ActiveRecord::Migration[6.1]
  def change
    create_table :ofertas do |t|
      t.text :puesto, null: false
      t.text :descripcion, null: false
      t.integer :vacantes
      t.integer :rango_salarial
      t.date :fecha_inicio, null: false
      t.string :modalidad, null: false
      t.string :region, null: false
      t.references :empresa, null: false, foreign_key: true

      t.timestamps
    end
  end
end
