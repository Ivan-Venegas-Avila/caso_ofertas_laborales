require "test_helper"

class PostulacionesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulacion = postulaciones(:one)
  end

  test "should get index" do
    get postulaciones_url
    assert_response :success
  end

  test "should get new" do
    get new_postulacion_url
    assert_response :success
  end

  test "should create postulacion" do
    assert_difference('Postulacion.count') do
      post postulaciones_url, params: { postulacion: { empresa_id: @postulacion.empresa_id, oferta_id: @postulacion.oferta_id, postulante_id: @postulacion.postulante_id } }
    end

    assert_redirected_to postulacion_url(Postulacion.last)
  end

  test "should show postulacion" do
    get postulacion_url(@postulacion)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulacion_url(@postulacion)
    assert_response :success
  end

  test "should update postulacion" do
    patch postulacion_url(@postulacion), params: { postulacion: { empresa_id: @postulacion.empresa_id, oferta_id: @postulacion.oferta_id, postulante_id: @postulacion.postulante_id } }
    assert_redirected_to postulacion_url(@postulacion)
  end

  test "should destroy postulacion" do
    assert_difference('Postulacion.count', -1) do
      delete postulacion_url(@postulacion)
    end

    assert_redirected_to postulaciones_url
  end
end
