module FuncionariosHelper
  def buscar_apartamentos
    @apartamento = Apartamento.all
  end
end
