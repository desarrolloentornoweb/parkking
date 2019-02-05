require "application_system_test_case"

class AutenticacionsTest < ApplicationSystemTestCase
  setup do
    @autenticacion = autenticacions(:one)
  end

  test "visiting the index" do
    visit autenticacions_url
    assert_selector "h1", text: "Autenticacions"
  end

  test "creating a Autenticacion" do
    visit autenticacions_url
    click_on "New Autenticacion"

    fill_in "Contrasena", with: @autenticacion.contrasena
    fill_in "Correo", with: @autenticacion.correo
    fill_in "Tipo usuario", with: @autenticacion.tipo_usuario_id
    click_on "Create Autenticacion"

    assert_text "Autenticacion was successfully created"
    click_on "Back"
  end

  test "updating a Autenticacion" do
    visit autenticacions_url
    click_on "Edit", match: :first

    fill_in "Contrasena", with: @autenticacion.contrasena
    fill_in "Correo", with: @autenticacion.correo
    fill_in "Tipo usuario", with: @autenticacion.tipo_usuario_id
    click_on "Update Autenticacion"

    assert_text "Autenticacion was successfully updated"
    click_on "Back"
  end

  test "destroying a Autenticacion" do
    visit autenticacions_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autenticacion was successfully destroyed"
  end
end
