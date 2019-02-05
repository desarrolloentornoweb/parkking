class CreateBajas < ActiveRecord::Migration[5.2]
  def change
    create_table :bajas do |t|
      t.string :motivo
      t.belongs_to :autenticacion, foreign_key: true

      t.timestamps
    end
  end
end
