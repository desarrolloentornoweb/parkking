class CreateEstacionamientos < ActiveRecord::Migration[5.2]
  def change
    create_table :estacionamientos do |t|
      t.string :nombre
      t.integer :departamento
      t.integer :provincia
      t.integer :distrito
      t.string :direccion
      t.float :latitud
      t.float :longitud
      t.boolean :lunes
      t.boolean :martes
      t.boolean :miercoles
      t.boolean :jueves
      t.boolean :viernes
      t.boolean :sabado
      t.boolean :domingo
      t.time :hinicio
      t.time :hcierre
      t.string :telf
      t.integer :nespac
      t.integer :largo
      t.integer :ancho
      t.integer :alto
      t.integer :precio
      t.string :img

      t.timestamps
    end
  end
end
