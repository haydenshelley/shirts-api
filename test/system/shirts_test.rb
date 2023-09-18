require "application_system_test_case"

class ShirtsTest < ApplicationSystemTestCase
  setup do
    @shirt = shirts(:one)
  end

  test "visiting the index" do
    visit shirts_url
    assert_selector "h1", text: "Shirts"
  end

  test "should create shirt" do
    visit shirts_url
    click_on "New shirt"

    fill_in "Brand", with: @shirt.brand
    fill_in "Color", with: @shirt.color
    fill_in "Size", with: @shirt.size
    click_on "Create Shirt"

    assert_text "Shirt was successfully created"
    click_on "Back"
  end

  test "should update Shirt" do
    visit shirt_url(@shirt)
    click_on "Edit this shirt", match: :first

    fill_in "Brand", with: @shirt.brand
    fill_in "Color", with: @shirt.color
    fill_in "Size", with: @shirt.size
    click_on "Update Shirt"

    assert_text "Shirt was successfully updated"
    click_on "Back"
  end

  test "should destroy Shirt" do
    visit shirt_url(@shirt)
    click_on "Destroy this shirt", match: :first

    assert_text "Shirt was successfully destroyed"
  end
end
