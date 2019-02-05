class CreateAlquilers < ActiveRecord::Migration[5.2]
  def change
    create_table :alquilers do |t|
      t.date :fecha
      t.time :hora
      t.integer :nhora
      t.string :tpaog
      t.belongs_to :estacionamiento, foreign_key: true

      t.timestamps
    end
  end
end
