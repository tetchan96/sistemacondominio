class DescricaoDespesaReceitaController < ApplicationController
  before_action :set_descricao_despesa_receitum, only: [:show, :edit, :update, :destroy]

  # GET /descricao_despesa_receita
  # GET /descricao_despesa_receita.json
  def index
    @descricao_despesa_receita = DescricaoDespesaReceitum.all
  end

  # GET /descricao_despesa_receita/1
  # GET /descricao_despesa_receita/1.json
  def show
  end

  # GET /descricao_despesa_receita/new
  def new
    @descricao_despesa_receitum = DescricaoDespesaReceitum.new
  end

  # GET /descricao_despesa_receita/1/edit
  def edit
  end

  # POST /descricao_despesa_receita
  # POST /descricao_despesa_receita.json
  def create
    @descricao_despesa_receitum = DescricaoDespesaReceitum.new(descricao_despesa_receitum_params)

    respond_to do |format|
      if @descricao_despesa_receitum.save
        format.html { redirect_to @descricao_despesa_receitum, notice: 'Descricao despesa receitum was successfully created.' }
        format.json { render :show, status: :created, location: @descricao_despesa_receitum }
      else
        format.html { render :new }
        format.json { render json: @descricao_despesa_receitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descricao_despesa_receita/1
  # PATCH/PUT /descricao_despesa_receita/1.json
  def update
    respond_to do |format|
      if @descricao_despesa_receitum.update(descricao_despesa_receitum_params)
        format.html { redirect_to @descricao_despesa_receitum, notice: 'Descricao despesa receitum was successfully updated.' }
        format.json { render :show, status: :ok, location: @descricao_despesa_receitum }
      else
        format.html { render :edit }
        format.json { render json: @descricao_despesa_receitum.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descricao_despesa_receita/1
  # DELETE /descricao_despesa_receita/1.json
  def destroy
    @descricao_despesa_receitum.destroy
    respond_to do |format|
      format.html { redirect_to descricao_despesa_receita_url, notice: 'Descricao despesa receitum was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descricao_despesa_receitum
      @descricao_despesa_receitum = DescricaoDespesaReceitum.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descricao_despesa_receitum_params
      params.require(:descricao_despesa_receitum).permit(:descricao, :natureza, :valor_fixo, :ativo, :data_inclusao, :data_alteracao, :apartamento_id)
    end
end
