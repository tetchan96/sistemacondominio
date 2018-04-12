module MoradorsHelper
  def buscar_apartamentos
    @apartamento = Apartamento.all
  end
end
