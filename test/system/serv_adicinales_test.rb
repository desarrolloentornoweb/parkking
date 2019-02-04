require "application_system_test_case"

class ServAdicinalesTest < ApplicationSystemTestCase
  setup do
    @serv_adicinale = serv_adicinales(:one)
  end

  test "visiting the index" do
    visit serv_adicinales_url
    assert_selector "h1", text: "Serv Adicinales"
  end

  test "creating a Serv adicinale" do
    visit serv_adicinales_url
    click_on "New Serv Adicinale"

    fill_in "Nombre", with: @serv_adicinale.nombre
    fill_in "Precio", with: @serv_adicinale.precio
    click_on "Create Serv adicinale"

    assert_text "Serv adicinale was successfully created"
    click_on "Back"
  end

  test "updating a Serv adicinale" do
    visit serv_adicinales_url
    click_on "Edit", match: :first

    fill_in "Nombre", with: @serv_adicinale.nombre
    fill_in "Precio", with: @serv_adicinale.precio
    click_on "Update Serv adicinale"

    assert_text "Serv adicinale was successfully updated"
    click_on "Back"
  end

  test "destroying a Serv adicinale" do
    visit serv_adicinales_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Serv adicinale was successfully destroyed"
  end
end
