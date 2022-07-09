require "application_system_test_case"

class PostulacionesTest < ApplicationSystemTestCase
  setup do
    @postulacion = postulaciones(:one)
  end

  test "visiting the index" do
    visit postulaciones_url
    assert_selector "h1", text: "Postulaciones"
  end

  test "creating a Postulacion" do
    visit postulaciones_url
    click_on "New Postulacion"

    fill_in "Empresa", with: @postulacion.empresa_id
    fill_in "Oferta", with: @postulacion.oferta_id
    fill_in "Postulante", with: @postulacion.postulante_id
    click_on "Create Postulacion"

    assert_text "Postulacion was successfully created"
    click_on "Back"
  end

  test "updating a Postulacion" do
    visit postulaciones_url
    click_on "Edit", match: :first

    fill_in "Empresa", with: @postulacion.empresa_id
    fill_in "Oferta", with: @postulacion.oferta_id
    fill_in "Postulante", with: @postulacion.postulante_id
    click_on "Update Postulacion"

    assert_text "Postulacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Postulacion" do
    visit postulaciones_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Postulacion was successfully destroyed"
  end
end
