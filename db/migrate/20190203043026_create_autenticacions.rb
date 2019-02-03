class CreateAutenticacions < ActiveRecord::Migration[5.2]
  def change
    create_table :autenticacions do |t|
      t.string :correo
      t.string :contrase¤a

      t.timestamps
    end
  end
end
