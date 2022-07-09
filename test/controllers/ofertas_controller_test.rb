require "test_helper"

class OfertasControllerTest < ActionDispatch::IntegrationTest
  setup do
    @oferta = ofertas(:one)
  end

  test "should get index" do
    get ofertas_url
    assert_response :success
  end

  test "should get new" do
    get new_oferta_url
    assert_response :success
  end

  test "should create oferta" do
    assert_difference('Oferta.count') do
      post ofertas_url, params: { oferta: { descripcion: @oferta.descripcion, empresa_id: @oferta.empresa_id, fecha_inicio: @oferta.fecha_inicio, modalidad: @oferta.modalidad, puesto: @oferta.puesto, rango_salarial: @oferta.rango_salarial, region: @oferta.region, vacantes: @oferta.vacantes } }
    end

    assert_redirected_to oferta_url(Oferta.last)
  end

  test "should show oferta" do
    get oferta_url(@oferta)
    assert_response :success
  end

  test "should get edit" do
    get edit_oferta_url(@oferta)
    assert_response :success
  end

  test "should update oferta" do
    patch oferta_url(@oferta), params: { oferta: { descripcion: @oferta.descripcion, empresa_id: @oferta.empresa_id, fecha_inicio: @oferta.fecha_inicio, modalidad: @oferta.modalidad, puesto: @oferta.puesto, rango_salarial: @oferta.rango_salarial, region: @oferta.region, vacantes: @oferta.vacantes } }
    assert_redirected_to oferta_url(@oferta)
  end

  test "should destroy oferta" do
    assert_difference('Oferta.count', -1) do
      delete oferta_url(@oferta)
    end

    assert_redirected_to ofertas_url
  end
end
