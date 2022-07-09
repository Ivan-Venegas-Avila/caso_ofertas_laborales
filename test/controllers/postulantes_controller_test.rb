require "test_helper"

class PostulantesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @postulante = postulantes(:one)
  end

  test "should get index" do
    get postulantes_url
    assert_response :success
  end

  test "should get new" do
    get new_postulante_url
    assert_response :success
  end

  test "should create postulante" do
    assert_difference('Postulante.count') do
      post postulantes_url, params: { postulante: { curriculum: @postulante.curriculum, fecha_nacimiento: @postulante.fecha_nacimiento, genero: @postulante.genero, nombre: @postulante.nombre, rut: @postulante.rut, telefono: @postulante.telefono } }
    end

    assert_redirected_to postulante_url(Postulante.last)
  end

  test "should show postulante" do
    get postulante_url(@postulante)
    assert_response :success
  end

  test "should get edit" do
    get edit_postulante_url(@postulante)
    assert_response :success
  end

  test "should update postulante" do
    patch postulante_url(@postulante), params: { postulante: { curriculum: @postulante.curriculum, fecha_nacimiento: @postulante.fecha_nacimiento, genero: @postulante.genero, nombre: @postulante.nombre, rut: @postulante.rut, telefono: @postulante.telefono } }
    assert_redirected_to postulante_url(@postulante)
  end

  test "should destroy postulante" do
    assert_difference('Postulante.count', -1) do
      delete postulante_url(@postulante)
    end

    assert_redirected_to postulantes_url
  end
end
