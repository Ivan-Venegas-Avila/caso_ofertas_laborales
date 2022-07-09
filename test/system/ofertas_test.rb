require "application_system_test_case"

class OfertasTest < ApplicationSystemTestCase
  setup do
    @oferta = ofertas(:one)
  end

  test "visiting the index" do
    visit ofertas_url
    assert_selector "h1", text: "Ofertas"
  end

  test "creating a Oferta" do
    visit ofertas_url
    click_on "New Oferta"

    fill_in "Descripcion", with: @oferta.descripcion
    fill_in "Empresa", with: @oferta.empresa_id
    fill_in "Fecha inicio", with: @oferta.fecha_inicio
    fill_in "Modalidad", with: @oferta.modalidad
    fill_in "Puesto", with: @oferta.puesto
    fill_in "Rango salarial", with: @oferta.rango_salarial
    fill_in "Region", with: @oferta.region
    fill_in "Vacantes", with: @oferta.vacantes
    click_on "Create Oferta"

    assert_text "Oferta was successfully created"
    click_on "Back"
  end

  test "updating a Oferta" do
    visit ofertas_url
    click_on "Edit", match: :first

    fill_in "Descripcion", with: @oferta.descripcion
    fill_in "Empresa", with: @oferta.empresa_id
    fill_in "Fecha inicio", with: @oferta.fecha_inicio
    fill_in "Modalidad", with: @oferta.modalidad
    fill_in "Puesto", with: @oferta.puesto
    fill_in "Rango salarial", with: @oferta.rango_salarial
    fill_in "Region", with: @oferta.region
    fill_in "Vacantes", with: @oferta.vacantes
    click_on "Update Oferta"

    assert_text "Oferta was successfully updated"
    click_on "Back"
  end

  test "destroying a Oferta" do
    visit ofertas_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Oferta was successfully destroyed"
  end
end
