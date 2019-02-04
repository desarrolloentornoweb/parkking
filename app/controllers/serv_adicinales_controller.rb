class ServAdicinalesController < ApplicationController
  before_action :set_serv_adicinale, only: [:show, :edit, :update, :destroy]

  # GET /serv_adicinales
  # GET /serv_adicinales.json
  def index
    @serv_adicinales = ServAdicinale.all
    @estacionamientos = Estacionamiento.all
  end

  # GET /serv_adicinales/1
  # GET /serv_adicinales/1.json
  def show

  end

  # GET /serv_adicinales/new
  def new
    @serv_adicinale = ServAdicinale.new
  end

  # GET /serv_adicinales/1/edit
  def edit
  end

  # POST /serv_adicinales
  # POST /serv_adicinales.json
  def create
    @serv_adicinale = ServAdicinale.new(serv_adicinale_params)

    respond_to do |format|
      if @serv_adicinale.save
        format.html { redirect_to @serv_adicinale, notice: 'Serv adicinale was successfully created.' }
        format.json { render :show, status: :created, location: @serv_adicinale }
      else
        format.html { render :new }
        format.json { render json: @serv_adicinale.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /serv_adicinales/1
  # PATCH/PUT /serv_adicinales/1.json
  def update
    respond_to do |format|
      if @serv_adicinale.update(serv_adicinale_params)
        format.html { redirect_to @serv_adicinale, notice: 'Serv adicinale was successfully updated.' }
        format.json { render :show, status: :ok, location: @serv_adicinale }
      else
        format.html { render :edit }
        format.json { render json: @serv_adicinale.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /serv_adicinales/1
  # DELETE /serv_adicinales/1.json
  def destroy
    @serv_adicinale.destroy
    respond_to do |format|
      format.html { redirect_to serv_adicinales_url, notice: 'Serv adicinale was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_serv_adicinale
      @serv_adicinale = ServAdicinale.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def serv_adicinale_params
      params.require(:serv_adicinale).permit(:nombre, :precio)
    end
end
