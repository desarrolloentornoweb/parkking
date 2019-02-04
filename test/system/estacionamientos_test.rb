require "application_system_test_case"

class EstacionamientosTest < ApplicationSystemTestCase
  setup do
    @estacionamiento = estacionamientos(:one)
  end

  test "visiting the index" do
    visit estacionamientos_url
    assert_selector "h1", text: "Estacionamientos"
  end

  test "creating a Estacionamiento" do
    visit estacionamientos_url
    click_on "New Estacionamiento"

    fill_in "Alto", with: @estacionamiento.alto
    fill_in "Ancho", with: @estacionamiento.ancho
    fill_in "Departamento", with: @estacionamiento.departamento
    fill_in "Direccion", with: @estacionamiento.direccion
    fill_in "Distrito", with: @estacionamiento.distrito
    fill_in "Domingo", with: @estacionamiento.domingo
    fill_in "Hcierre", with: @estacionamiento.hcierre
    fill_in "Hinicio", with: @estacionamiento.hinicio
    fill_in "Img", with: @estacionamiento.img
    fill_in "Jueves", with: @estacionamiento.jueves
    fill_in "Largo", with: @estacionamiento.largo
    fill_in "Latitud", with: @estacionamiento.latitud
    fill_in "Longitud", with: @estacionamiento.longitud
    fill_in "Lunes", with: @estacionamiento.lunes
    fill_in "Martes", with: @estacionamiento.martes
    fill_in "Miercoles", with: @estacionamiento.miercoles
    fill_in "Nespac", with: @estacionamiento.nespac
    fill_in "Nombre", with: @estacionamiento.nombre
    fill_in "Precio", with: @estacionamiento.precio
    fill_in "Provincia", with: @estacionamiento.provincia
    fill_in "Sabado", with: @estacionamiento.sabado
    fill_in "Telf", with: @estacionamiento.telf
    fill_in "Viernes", with: @estacionamiento.viernes
    click_on "Create Estacionamiento"

    assert_text "Estacionamiento was successfully created"
    click_on "Back"
  end

  test "updating a Estacionamiento" do
    visit estacionamientos_url
    click_on "Edit", match: :first

    fill_in "Alto", with: @estacionamiento.alto
    fill_in "Ancho", with: @estacionamiento.ancho
    fill_in "Departamento", with: @estacionamiento.departamento
    fill_in "Direccion", with: @estacionamiento.direccion
    fill_in "Distrito", with: @estacionamiento.distrito
    fill_in "Domingo", with: @estacionamiento.domingo
    fill_in "Hcierre", with: @estacionamiento.hcierre
    fill_in "Hinicio", with: @estacionamiento.hinicio
    fill_in "Img", with: @estacionamiento.img
    fill_in "Jueves", with: @estacionamiento.jueves
    fill_in "Largo", with: @estacionamiento.largo
    fill_in "Latitud", with: @estacionamiento.latitud
    fill_in "Longitud", with: @estacionamiento.longitud
    fill_in "Lunes", with: @estacionamiento.lunes
    fill_in "Martes", with: @estacionamiento.martes
    fill_in "Miercoles", with: @estacionamiento.miercoles
    fill_in "Nespac", with: @estacionamiento.nespac
    fill_in "Nombre", with: @estacionamiento.nombre
    fill_in "Precio", with: @estacionamiento.precio
    fill_in "Provincia", with: @estacionamiento.provincia
    fill_in "Sabado", with: @estacionamiento.sabado
    fill_in "Telf", with: @estacionamiento.telf
    fill_in "Viernes", with: @estacionamiento.viernes
    click_on "Update Estacionamiento"

    assert_text "Estacionamiento was successfully updated"
    click_on "Back"
  end

  test "destroying a Estacionamiento" do
    visit estacionamientos_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Estacionamiento was successfully destroyed"
  end
end
