module ReceitaARecebersHelper
  def buscar_descricao_despesa
    @descricao_tipo = DescricaoTipo.all
  end
  def buscar_apartamento
    @apartamento = Apartamento.all
  end
  def buscar_morador
    @morador = Morador.all
  end
end
