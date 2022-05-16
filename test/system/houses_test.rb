require "application_system_test_case"

class HousesTest < ApplicationSystemTestCase
  setup do
    @house = houses(:one)
  end

  test "visiting the index" do
    visit houses_url
    assert_selector "h1", text: "Houses"
  end

  test "creating a House" do
    visit houses_url
    click_on "New House"

    fill_in "City", with: @house.city
    fill_in "Owner", with: @house.owner_id
    fill_in "Purchase date", with: @house.purchase_date
    fill_in "State", with: @house.state
    fill_in "Street address", with: @house.street_address
    fill_in "Zip code", with: @house.zip_code
    click_on "Create House"

    assert_text "House was successfully created"
    click_on "Back"
  end

  test "updating a House" do
    visit houses_url
    click_on "Edit", match: :first

    fill_in "City", with: @house.city
    fill_in "Owner", with: @house.owner_id
    fill_in "Purchase date", with: @house.purchase_date
    fill_in "State", with: @house.state
    fill_in "Street address", with: @house.street_address
    fill_in "Zip code", with: @house.zip_code
    click_on "Update House"

    assert_text "House was successfully updated"
    click_on "Back"
  end

  test "destroying a House" do
    visit houses_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "House was successfully destroyed"
  end
end
