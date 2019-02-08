class EstacionamientosController < ApplicationController
  before_action :set_estacionamiento, only: [:show, :edit, :update, :destroy]

  # GET /estacionamientos
  # GET /estacionamientos.json
  def index
    @estacionamientos = Estacionamiento.all
    @serv_adicinales = ServAdicinale.all
  end

  # GET /estacionamientos/1
  # GET /estacionamientos/1.json
  def show
    #@departamento = Ubigeo.find_by_sql("where idDepartamento="+@estacionamiento.departamento.to_s)
    @serv_adicinales = ServAdicinale.all
    @departamento = Ubigeo.where(:idDepartamento => @estacionamiento.departamento).first
    @provincia = Ubigeo.where(:idProvincia => @estacionamiento.provincia).first
    @distrito = Ubigeo.where(:idDistrito => @estacionamiento.distrito).first
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
    
  end

  # GET /estacionamientos/new
  def new
    @estacionamiento = Estacionamiento.new
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
    @serv_adicinales = ServAdicinale.all
  end

  # GET /estacionamientos/1/edit
  def edit
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
    @serv_adicinales = ServAdicinale.all
  end

  # POST /estacionamientos
  # POST /estacionamientos.json
  def create
    @estacionamiento = Estacionamiento.new(estacionamiento_params)
    @lista_departamentos = Ubigeo.find_by_sql("select  distinct idDepartamento, Departamento from ubigeos")
    @lista_provincias = Ubigeo.find_by_sql("select  distinct idProvincia, Provincia from ubigeos")
    @lista_distritos = Ubigeo.find_by_sql("select  distinct idDistrito, Distrito from ubigeos")
    @serv_adicinales = ServAdicinale.all

    respond_to do |format|
      if @estacionamiento.save
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento was successfully created.' }
        format.json { render :show, status: :created, location: @estacionamiento }
      else
        format.html { render :new }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /estacionamientos/1
  # PATCH/PUT /estacionamientos/1.json
  def update
    respond_to do |format|
      if @estacionamiento.update(estacionamiento_params)
        format.html { redirect_to @estacionamiento, notice: 'Estacionamiento was successfully updated.' }
        format.json { render :show, status: :ok, location: @estacionamiento }
      else
        format.html { render :edit }
        format.json { render json: @estacionamiento.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /estacionamientos/1
  # DELETE /estacionamientos/1.json
  def destroy
    @estacionamiento.destroy
    respond_to do |format|
      format.html { redirect_to estacionamientos_url, notice: 'Estacionamiento was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_estacionamiento
      @estacionamiento = Estacionamiento.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def estacionamiento_params
      params.require(:estacionamiento).permit(:nombre, :departamento, :provincia, :distrito, :direccion, :latitud, :longitud, :lunes, :martes, :miercoles, :jueves, :viernes, :sabado, :domingo, :hinicio, :hcierre, :telf, :nespac, :largo, :ancho, :alto, :precio, :img)
    end
end
