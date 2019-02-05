class CreateAlquilers < ActiveRecord::Migration[5.2]
  def change
    create_table :alquilers do |t|
      t.integer :idEstacionamiento
      t.date :fecha
      t.time :hora
      t.integer :nhora
      t.string :tpago

      t.timestamps
    end
  end
end
