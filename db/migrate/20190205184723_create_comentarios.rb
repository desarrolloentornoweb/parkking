class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.integer :puntuacion
      t.string :descripcion
      t.belongs_to :usuario, foreign_key: true
      t.belongs_to :autenticacion, foreign_key: true

      t.timestamps
    end
  end
end
