class CreateServAdicinales < ActiveRecord::Migration[5.2]
  def change
    create_table :serv_adicinales do |t|
      t.string :nombre
      t.decimal :precio

      t.timestamps
    end
  end
end
