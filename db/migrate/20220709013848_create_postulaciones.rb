class CreatePostulaciones < ActiveRecord::Migration[6.1]
  def change
    create_table :postulaciones do |t|
      t.references :postulante, null: false, foreign_key: true
      t.references :empresa, null: false, foreign_key: true
      t.references :oferta, null: false, foreign_key: true

      t.timestamps
    end
  end
end
