class CreateUsuarios < ActiveRecord::Migration[5.2]
  def change
    create_table :usuarios do |t|
      t.string :nroDocumento
      t.string :nombres
      t.string :apellidoPaterno
      t.string :apellidoMaterno
      t.date :fechaNacimiento
      t.string :celular
      t.string :sexo
      t.string :direccion
      t.belongs_to :autenticacion, foreign_key: true
      t.belongs_to :distrito, foreign_key: true
      t.belongs_to :tipo_documento, foreign_key: true

      t.timestamps
    end
  end
end
