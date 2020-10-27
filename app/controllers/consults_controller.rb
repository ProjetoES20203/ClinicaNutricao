class ConsultsController < ApplicationController
  before_action :get_paciente
  before_action :set_consult, only: [:show, :edit, :update, :destroy]
  before_action :authenticate_nutri!, except: [:index, :show]


  # GET /consults
  # GET /consults.json
  def index
    if (nutri_signed_in? or paciente_signed_in?)
      @consults = @paciente.consults
    else
      redirect_to root_path
    end

  end

  # GET /consults/1
  # GET /consults/1.json
  def show
    if ((!nutri_signed_in? and paciente_signed_in?) or (nutri_signed_in? and !paciente_signed_in?))
    else
      redirect_to root_path
    end
  end

  # GET /consults/new
  def new
    @consult = @paciente.consults.build
  end

  # GET /consults/1/edit
  def edit
  end

  # POST /consults
  # POST /consults.json
  def create
    @consult = @paciente.consults.build(consult_params)

    respond_to do |format|
      if @consult.save
        format.html { redirect_to paciente_consults_path(@paciente), notice: 'A Consulta foi  criada.' }
        format.json { render :show, status: :created, location: @consult }
      else
        format.html { render :new }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /consults/1
  # PATCH/PUT /consults/1.json
  def update
    respond_to do |format|
      if @consult.update(consult_params)
        format.html { redirect_to paciente_consult_path(@paciente), notice: 'A consulta foi atualizada.' }
        format.json { render :show, status: :ok, location: @consult }
      else
        format.html { render :edit }
        format.json { render json: @consult.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /consults/1
  # DELETE /consults/1.json
  def destroy
    @consult.destroy
    respond_to do |format|
      format.html { redirect_to paciente_consults_path(@paciente), notice: 'Consult was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private

  # Use callbacks to share common setup or constraints between actions.
  def set_consult
    @consult = @paciente.consults.find(params[:id])
  end

  def get_paciente
    @paciente = Paciente.find(params[:paciente_id])
  end

  # Only allow a list of trusted parameters through.
  def consult_params
    params.require(:consult).permit(:prontuario, :data, :paciente_id)
  end
end
