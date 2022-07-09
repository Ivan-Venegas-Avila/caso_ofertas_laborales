class PostulacionesController < ApplicationController
  before_action :set_postulacion, only: %i[ show edit update destroy ]

  # GET /postulaciones or /postulaciones.json
  def index
    @postulaciones = Postulacion.all
  end

  # GET /postulaciones/1 or /postulaciones/1.json
  def show
  end

  # GET /postulaciones/new
  def new
    @postulacion = Postulacion.new
  end

  # GET /postulaciones/1/edit
  def edit
  end

  # POST /postulaciones or /postulaciones.json
  def create
    @postulacion = Postulacion.new(postulacion_params)

    respond_to do |format|
      if @postulacion.save
        format.html { redirect_to postulacion_url(@postulacion), notice: "Postulacion was successfully created." }
        format.json { render :show, status: :created, location: @postulacion }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postulacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulaciones/1 or /postulaciones/1.json
  def update
    respond_to do |format|
      if @postulacion.update(postulacion_params)
        format.html { redirect_to postulacion_url(@postulacion), notice: "Postulacion was successfully updated." }
        format.json { render :show, status: :ok, location: @postulacion }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postulacion.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulaciones/1 or /postulaciones/1.json
  def destroy
    @postulacion.destroy

    respond_to do |format|
      format.html { redirect_to postulaciones_url, notice: "Postulacion was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulacion
      @postulacion = Postulacion.find(params[:id])
    end

    # Only allow a list of trusted parameters through.
    def postulacion_params
      params.require(:postulacion).permit(:postulante_id, :empresa_id, :oferta_id)
    end
end
