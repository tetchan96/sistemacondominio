require 'test_helper'

class DescricaoDespesaReceitaControllerTest < ActionDispatch::IntegrationTest
  setup do
    @descricao_despesa_receitum = descricao_despesa_receita(:one)
  end

  test "should get index" do
    get descricao_despesa_receita_url
    assert_response :success
  end

  test "should get new" do
    get new_descricao_despesa_receitum_url
    assert_response :success
  end

  test "should create descricao_despesa_receitum" do
    assert_difference('DescricaoDespesaReceitum.count') do
      post descricao_despesa_receita_url, params: { descricao_despesa_receitum: { ativo: @descricao_despesa_receitum.ativo, data_alteracao: @descricao_despesa_receitum.data_alteracao, data_inclusao: @descricao_despesa_receitum.data_inclusao, descricao: @descricao_despesa_receitum.descricao, natureza: @descricao_despesa_receitum.natureza, valor_fixo: @descricao_despesa_receitum.valor_fixo } }
    end

    assert_redirected_to descricao_despesa_receitum_url(DescricaoDespesaReceitum.last)
  end

  test "should show descricao_despesa_receitum" do
    get descricao_despesa_receitum_url(@descricao_despesa_receitum)
    assert_response :success
  end

  test "should get edit" do
    get edit_descricao_despesa_receitum_url(@descricao_despesa_receitum)
    assert_response :success
  end

  test "should update descricao_despesa_receitum" do
    patch descricao_despesa_receitum_url(@descricao_despesa_receitum), params: { descricao_despesa_receitum: { ativo: @descricao_despesa_receitum.ativo, data_alteracao: @descricao_despesa_receitum.data_alteracao, data_inclusao: @descricao_despesa_receitum.data_inclusao, descricao: @descricao_despesa_receitum.descricao, natureza: @descricao_despesa_receitum.natureza, valor_fixo: @descricao_despesa_receitum.valor_fixo } }
    assert_redirected_to descricao_despesa_receitum_url(@descricao_despesa_receitum)
  end

  test "should destroy descricao_despesa_receitum" do
    assert_difference('DescricaoDespesaReceitum.count', -1) do
      delete descricao_despesa_receitum_url(@descricao_despesa_receitum)
    end

    assert_redirected_to descricao_despesa_receita_url
  end
end
