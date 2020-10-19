class RetornosController < ApplicationController
  before_action :get_consult
  before_action :set_retorno, only: [:show, :edit, :update, :destroy]

  # GET /retornos
  # GET /retornos.json
  def index
    @retornos = @consult.retornos
  end

  # GET /retornos/1
  # GET /retornos/1.json
  def show
  end

  # GET /retornos/new
  def new
    @retorno = @consult.retornos.build
  end

  # GET /retornos/1/edit
  def edit
  end

  # POST /retornos
  # POST /retornos.json
  def create
    @retorno = @consult.retornos.build(retorno_params)

    respond_to do |format|
      if @retorno.save
        format.html { redirect_to consult_retornos_path(@consult), notice: 'Retorno was successfully created.' }
        format.json { render :show, status: :created, location: @retorno }
      else
        format.html { render :new }
        format.json { render json: @retorno.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /retornos/1
  # PATCH/PUT /retornos/1.json
  def update
    respond_to do |format|
      if @retorno.update(retorno_params)
        format.html { redirect_to consult_retornos_path(@consult), notice: 'Retorno was successfully updated.' }
        format.json { render :show, status: :ok, location: @retorno }
      else
        format.html { render :edit }
        format.json { render json: @retorno.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /retornos/1
  # DELETE /retornos/1.json
  def destroy
    @retorno.destroy
    respond_to do |format|
      format.html { redirect_to consult_retornos_path(@consult), notice: 'Retorno was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_retorno
      @retorno = Retorno.find(params[:id])
    end

  def get_consult
    @consult = Consult.find(params[:consult_id])
  end

    # Only allow a list of trusted parameters through.
    def retorno_params
      params.require(:retorno).permit(:prontuario, :data, :estado, :consult_id)
    end
end
