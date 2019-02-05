class CreateDistritos < ActiveRecord::Migration[5.2]
  def change
    create_table :distritos do |t|
      t.string :distrito
      t.integer :idProvincia
      t.string :Provincia
      t.integer :idDepartamento
      t.string :Departamento

      t.timestamps
    end
  end
end
