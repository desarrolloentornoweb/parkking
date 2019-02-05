require "application_system_test_case"

class AutenticsTest < ApplicationSystemTestCase
  setup do
    @autentic = autentics(:one)
  end

  test "visiting the index" do
    visit autentics_url
    assert_selector "h1", text: "Autentics"
  end

  test "creating a Autentic" do
    visit autentics_url
    click_on "New Autentic"

    fill_in "Contrasena", with: @autentic.contrasena
    fill_in "Correo", with: @autentic.correo
    fill_in "Tipo usuario", with: @autentic.tipo_usuario_id
    click_on "Create Autentic"

    assert_text "Autentic was successfully created"
    click_on "Back"
  end

  test "updating a Autentic" do
    visit autentics_url
    click_on "Edit", match: :first

    fill_in "Contrasena", with: @autentic.contrasena
    fill_in "Correo", with: @autentic.correo
    fill_in "Tipo usuario", with: @autentic.tipo_usuario_id
    click_on "Update Autentic"

    assert_text "Autentic was successfully updated"
    click_on "Back"
  end

  test "destroying a Autentic" do
    visit autentics_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Autentic was successfully destroyed"
  end
end
