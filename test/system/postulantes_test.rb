require "application_system_test_case"

class PostulantesTest < ApplicationSystemTestCase
  setup do
    @postulante = postulantes(:one)
  end

  test "visiting the index" do
    visit postulantes_url
    assert_selector "h1", text: "Postulantes"
  end

  test "creating a Postulante" do
    visit postulantes_url
    click_on "New Postulante"

    fill_in "Curriculum", with: @postulante.curriculum
    fill_in "Fecha nacimiento", with: @postulante.fecha_nacimiento
    fill_in "Genero", with: @postulante.genero
    fill_in "Nombre", with: @postulante.nombre
    fill_in "Rut", with: @postulante.rut
    fill_in "Telefono", with: @postulante.telefono
    click_on "Create Postulante"

    assert_text "Postulante was successfully created"
    click_on "Back"
  end

  test "updating a Postulante" do
    visit postulantes_url
    click_on "Edit", match: :first

    fill_in "Curriculum", with: @postulante.curriculum
    fill_in "Fecha nacimiento", with: @postulante.fecha_nacimiento
    fill_in "Genero", with: @postulante.genero
    fill_in "Nombre", with: @postulante.nombre
    fill_in "Rut", with: @postulante.rut
    fill_in "Telefono", with: @postulante.telefono
    click_on "Update Postulante"

    assert_text "Postulante was successfully updated"
    click_on "Back"
  end

  test "destroying a Postulante" do
    visit postulantes_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postulante was successfully destroyed"
  end
end
