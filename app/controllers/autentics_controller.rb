class AutenticsController < ApplicationController
  before_action :set_autentic, only: [:show, :edit, :update, :destroy]

  # GET /autentics
  # GET /autentics.json
  def index
    @autentics = Autentic.all
  end

  # GET /autentics/1
  # GET /autentics/1.json
  def show
  end

  # GET /autentics/new
  def new
    @autentic = Autentic.new
  end

  # GET /autentics/1/edit
  def edit
  end

  # POST /autentics
  # POST /autentics.json
  def create
    @autentic = Autentic.new(autentic_params)

    respond_to do |format|
      if @autentic.save
        format.html { redirect_to @autentic, notice: 'Autentic was successfully created.' }
        format.json { render :show, status: :created, location: @autentic }
      else
        format.html { render :new }
        format.json { render json: @autentic.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /autentics/1
  # PATCH/PUT /autentics/1.json
  def update
    respond_to do |format|
      if @autentic.update(autentic_params)
        format.html { redirect_to @autentic, notice: 'Autentic was successfully updated.' }
        format.json { render :show, status: :ok, location: @autentic }
      else
        format.html { render :edit }
        format.json { render json: @autentic.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /autentics/1
  # DELETE /autentics/1.json
  def destroy
    @autentic.destroy
    respond_to do |format|
      format.html { redirect_to autentics_url, notice: 'Autentic was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_autentic
      @autentic = Autentic.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def autentic_params
      params.require(:autentic).permit(:correo, :contrasena, :tipo_usuario_id)
    end
end
