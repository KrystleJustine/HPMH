require "application_system_test_case"

class HilbertPmsTest < ApplicationSystemTestCase
  setup do
    @hilbert_pm = hilbert_pms(:one)
  end

  test "visiting the index" do
    visit hilbert_pms_url
    assert_selector "h1", text: "Hilbert Pms"
  end

  test "creating a Hilbert pm" do
    visit hilbert_pms_url
    click_on "New Hilbert Pm"

    fill_in "Location", with: @hilbert_pm.location
    fill_in "Name", with: @hilbert_pm.name
    click_on "Create Hilbert pm"

    assert_text "Hilbert pm was successfully created"
    click_on "Back"
  end

  test "updating a Hilbert pm" do
    visit hilbert_pms_url
    click_on "Edit", match: :first

    fill_in "Location", with: @hilbert_pm.location
    fill_in "Name", with: @hilbert_pm.name
    click_on "Update Hilbert pm"

    assert_text "Hilbert pm was successfully updated"
    click_on "Back"
  end

  test "destroying a Hilbert pm" do
    visit hilbert_pms_url
    page.accept_confirm do
      click_on "Destroy", match: :first
    end

    assert_text "Hilbert pm was successfully destroyed"
  end
end
