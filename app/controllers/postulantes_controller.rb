class PostulantesController < ApplicationController
  before_action :set_postulante, only: %i[ show edit update destroy ]

  # GET /postulantes or /postulantes.json
  def index
    @postulantes = Postulante.all
  end

  # GET /postulantes/1 or /postulantes/1.json
  def show
  end

  # GET /postulantes/new
  def new
    @postulante = Postulante.new
  end

  # GET /postulantes/1/edit
  def edit
  end

  # POST /postulantes or /postulantes.json
  def create
    @postulante = Postulante.new(postulante_params)

    respond_to do |format|
      if @postulante.save
        format.html { redirect_to postulante_url(@postulante), notice: "Postulante was successfully created." }
        format.json { render :show, status: :created, location: @postulante }
      else
        format.html { render :new, status: :unprocessable_entity }
        format.json { render json: @postulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /postulantes/1 or /postulantes/1.json
  def update
    respond_to do |format|
      if @postulante.update(postulante_params)
        format.html { redirect_to postulante_url(@postulante), notice: "Postulante was successfully updated." }
        format.json { render :show, status: :ok, location: @postulante }
      else
        format.html { render :edit, status: :unprocessable_entity }
        format.json { render json: @postulante.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /postulantes/1 or /postulantes/1.json
  def destroy
    @postulante.destroy

    respond_to do |format|
      format.html { redirect_to postulantes_url, notice: "Postulante was successfully destroyed." }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_postulante
      @postulante = Postulante.find(params[:user_id])
    end

    # Only allow a list of trusted parameters through.
    def postulante_params
      params.require(:postulante).permit(:rut, :nombre, :fecha_nacimiento, :genero, :telefono, :curriculum, :email, :password)
    end
end
