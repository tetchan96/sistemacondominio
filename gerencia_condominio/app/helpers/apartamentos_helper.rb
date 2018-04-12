module ApartamentosHelper
  def buscar_condominios
    @condominio = Condominio.all
  end
end
