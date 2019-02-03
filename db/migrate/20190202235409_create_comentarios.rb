class CreateComentarios < ActiveRecord::Migration[5.2]
  def change
    create_table :comentarios do |t|
      t.string :descripcion
      t.string :idopinionref
      t.integer :puntuacion
      t.integer :idusuario
      t.integer :idestacionamiento

      t.timestamps
    end
  end
end
