module VeiculosHelper
  def buscar_apartamentos
    @apartamento = Apartamento.all
  end
end
