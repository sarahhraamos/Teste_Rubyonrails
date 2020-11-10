require "application_system_test_case"

class CadsTest < ApplicationSystemTestCase
  setup do
    @cad = cads(:one)
  end

  test "visiting the index" do
    visit cads_url
    assert_selector "h1", text: "Cads"
  end

  test "creating a Cad" do
    visit cads_url
    click_on "New Cad"

    fill_in "Age", with: @cad.age
    fill_in "Id", with: @cad.id
    fill_in "Name", with: @cad.name
    click_on "Create Cad"

    assert_text "Cad was successfully created"
    click_on "Back"
  end

  test "updating a Cad" do
    visit cads_url
    click_on "Edit", match: :first

    fill_in "Age", with: @cad.age
    fill_in "Id", with: @cad.id
    fill_in "Name", with: @cad.name
    click_on "Update Cad"

    assert_text "Cad was successfully updated"
    click_on "Back"
  end

  test "destroying a Cad" do
    visit cads_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Cad was successfully destroyed"
  end
end
