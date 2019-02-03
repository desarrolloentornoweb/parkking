class DepartamentoUbigeo < ActiveRecord::Migration[5.2]
  def change
  	rename_column :ubigeos, :idDepratamento, :idDepartamento
  end
end
