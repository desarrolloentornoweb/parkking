class CreateAutentics < ActiveRecord::Migration[5.2]
  def change
    create_table :autentics do |t|
      t.string :correo
      t.string :contrasena
      t.belongs_to :tipo_usuario, foreign_key: true

      t.timestamps
    end
  end
end
