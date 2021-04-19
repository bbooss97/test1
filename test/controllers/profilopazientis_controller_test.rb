require "test_helper"

class ProfilopazientisControllerTest < ActionDispatch::IntegrationTest
  setup do
    @profilopazienti = profilopazientis(:one)
  end

  test "should get index" do
    get profilopazientis_url
    assert_response :success
  end

  test "should get new" do
    get new_profilopazienti_url
    assert_response :success
  end

  test "should create profilopazienti" do
    assert_difference('Profilopazienti.count') do
      post profilopazientis_url, params: { profilopazienti: { cognome: @profilopazienti.cognome, descrizione: @profilopazienti.descrizione, eta: @profilopazienti.eta, nome: @profilopazienti.nome, paziente_id: @profilopazienti.paziente_id } }
    end

    assert_redirected_to profilopazienti_url(Profilopazienti.last)
  end

  test "should show profilopazienti" do
    get profilopazienti_url(@profilopazienti)
    assert_response :success
  end

  test "should get edit" do
    get edit_profilopazienti_url(@profilopazienti)
    assert_response :success
  end

  test "should update profilopazienti" do
    patch profilopazienti_url(@profilopazienti), params: { profilopazienti: { cognome: @profilopazienti.cognome, descrizione: @profilopazienti.descrizione, eta: @profilopazienti.eta, nome: @profilopazienti.nome, paziente_id: @profilopazienti.paziente_id } }
    assert_redirected_to profilopazienti_url(@profilopazienti)
  end

  test "should destroy profilopazienti" do
    assert_difference('Profilopazienti.count', -1) do
      delete profilopazienti_url(@profilopazienti)
    end

    assert_redirected_to profilopazientis_url
  end
end
