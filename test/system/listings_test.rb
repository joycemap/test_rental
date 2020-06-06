require "application_system_test_case"

class ListingsTest < ApplicationSystemTestCase
  setup do
    @listing = listings(:one)
  end

  test "visiting the index" do
    visit listings_url
    assert_selector "h1", text: "Listings"
  end

  test "creating a Listing" do
    visit listings_url
    click_on "New Listing"

    fill_in "Address", with: @listing.address
    fill_in "Description", with: @listing.description
    fill_in "Home type", with: @listing.home_type_id
    fill_in "Images", with: @listing.images
    fill_in "Integer", with: @listing.integer
    fill_in "Lat", with: @listing.lat
    fill_in "Lng", with: @listing.lng
    fill_in "Max guests", with: @listing.max_guests
    fill_in "Price", with: @listing.price
    fill_in "Thumb img", with: @listing.thumb_img
    fill_in "Title", with: @listing.title
    click_on "Create Listing"

    assert_text "Listing was successfully created"
    click_on "Back"
  end

  test "updating a Listing" do
    visit listings_url
    click_on "Edit", match: :first

    fill_in "Address", with: @listing.address
    fill_in "Description", with: @listing.description
    fill_in "Home type", with: @listing.home_type_id
    fill_in "Images", with: @listing.images
    fill_in "Integer", with: @listing.integer
    fill_in "Lat", with: @listing.lat
    fill_in "Lng", with: @listing.lng
    fill_in "Max guests", with: @listing.max_guests
    fill_in "Price", with: @listing.price
    fill_in "Thumb img", with: @listing.thumb_img
    fill_in "Title", with: @listing.title
    click_on "Update Listing"

    assert_text "Listing was successfully updated"
    click_on "Back"
  end

  test "destroying a Listing" do
    visit listings_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Listing was successfully destroyed"
  end
end
