class DescricaoTiposController < ApplicationController
  before_action :set_descricao_tipo, only: [:show, :edit, :update, :destroy]

  # GET /descricao_tipos
  # GET /descricao_tipos.json
  def index
    @descricao_tipos = DescricaoTipo.all
  end

  # GET /descricao_tipos/1
  # GET /descricao_tipos/1.json
  def show
  end

  # GET /descricao_tipos/new
  def new
    @descricao_tipo = DescricaoTipo.new
  end

  # GET /descricao_tipos/1/edit
  def edit
  end

  # POST /descricao_tipos
  # POST /descricao_tipos.json
  def create
    @descricao_tipo = DescricaoTipo.new(descricao_tipo_params)

    respond_to do |format|
      if @descricao_tipo.save
        format.html { redirect_to @descricao_tipo, notice: 'Descricao tipo was successfully created.' }
        format.json { render :show, status: :created, location: @descricao_tipo }
      else
        format.html { render :new }
        format.json { render json: @descricao_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /descricao_tipos/1
  # PATCH/PUT /descricao_tipos/1.json
  def update
    respond_to do |format|
      if @descricao_tipo.update(descricao_tipo_params)
        format.html { redirect_to @descricao_tipo, notice: 'Descricao tipo was successfully updated.' }
        format.json { render :show, status: :ok, location: @descricao_tipo }
      else
        format.html { render :edit }
        format.json { render json: @descricao_tipo.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /descricao_tipos/1
  # DELETE /descricao_tipos/1.json
  def destroy
    @descricao_tipo.destroy
    respond_to do |format|
      format.html { redirect_to descricao_tipos_url, notice: 'Descricao tipo was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_descricao_tipo
      @descricao_tipo = DescricaoTipo.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def descricao_tipo_params
      params.require(:descricao_tipo).permit(:nome, :natureza, :valor_fixo, :ativo, :data_inclusao, :data_alteracao)
    end
end
