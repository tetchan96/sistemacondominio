class ReceitaARecebersController < ApplicationController
  before_action :set_receita_a_receber, only: [:show, :edit, :update, :destroy]

  # GET /receita_a_recebers
  # GET /receita_a_recebers.json
  def index
    @receita_a_recebers = ReceitaAReceber.all
  end

  # GET /receita_a_recebers/1
  # GET /receita_a_recebers/1.json
  def show
  end

  # GET /receita_a_recebers/new
  def new
    @receita_a_receber = ReceitaAReceber.new
  end

  # GET /receita_a_recebers/1/edit
  def edit
  end

  # POST /receita_a_recebers
  # POST /receita_a_recebers.json
  def create
    @receita_a_receber = ReceitaAReceber.new(receita_a_receber_params)

    respond_to do |format|
      if @receita_a_receber.save
        format.html { redirect_to @receita_a_receber, notice: 'Receita a receber was successfully created.' }
        format.json { render :show, status: :created, location: @receita_a_receber }
      else
        format.html { render :new }
        format.json { render json: @receita_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /receita_a_recebers/1
  # PATCH/PUT /receita_a_recebers/1.json
  def update
    respond_to do |format|
      if @receita_a_receber.update(receita_a_receber_params)
        format.html { redirect_to @receita_a_receber, notice: 'Receita a receber was successfully updated.' }
        format.json { render :show, status: :ok, location: @receita_a_receber }
      else
        format.html { render :edit }
        format.json { render json: @receita_a_receber.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /receita_a_recebers/1
  # DELETE /receita_a_recebers/1.json
  def destroy
    @receita_a_receber.destroy
    respond_to do |format|
      format.html { redirect_to receita_a_recebers_url, notice: 'Receita a receber was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_receita_a_receber
      @receita_a_receber = ReceitaAReceber.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def receita_a_receber_params
      params.require(:receita_a_receber).permit(:valor, :data, :natureza, :ativo, :data_inclusao, :data_alteracao, :apartamento_id, :descricao_despesa_receita_id, :morador_id)
    end
end
