class CreatePostulantes < ActiveRecord::Migration[6.1]
  def change
    create_table :postulantes do |t|
      t.integer :rut, null: false
      t.string :nombre, null: false
      t.date :fecha_nacimiento, null: false
      t.string :genero, null: false
      t.integer :telefono, null: false
      t.text :curriculum, null: false

      t.timestamps
    end
  end
end
