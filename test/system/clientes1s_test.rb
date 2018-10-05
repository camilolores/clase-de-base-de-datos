require "application_system_test_case"

class Clientes1sTest < ApplicationSystemTestCase
  setup do
    @clientes1 = clientes1s(:one)
  end

  test "visiting the index" do
    visit clientes1s_url
    assert_selector "h1", text: "Clientes1s"
  end

  test "creating a Clientes1" do
    visit clientes1s_url
    click_on "New Clientes1"

    fill_in "Email", with: @clientes1.email
    fill_in "Name", with: @clientes1.name
    click_on "Create Clientes1"

    assert_text "Clientes1 was successfully created"
    click_on "Back"
  end

  test "updating a Clientes1" do
    visit clientes1s_url
    click_on "Edit", match: :first

    fill_in "Email", with: @clientes1.email
    fill_in "Name", with: @clientes1.name
    click_on "Update Clientes1"

    assert_text "Clientes1 was successfully updated"
    click_on "Back"
  end

  test "destroying a Clientes1" do
    visit clientes1s_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Clientes1 was successfully destroyed"
  end
end
