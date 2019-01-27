class AlquilerController < ApplicationController
	layout 'dueño', except: [:RegAlquiler]
	layout 'cliente', except: [:HistoricoEstac, :AlquilerxFecha]
  def RegAlquiler
  end

  def HistoricoEstac
  end

  def AlquilerxFecha
  end
end
