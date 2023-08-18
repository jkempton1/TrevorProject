require "application_system_test_case"

class StonksTest < ApplicationSystemTestCase
  setup do
    @stonk = stonks(:one)
  end

  test "visiting the index" do
    visit stonks_url
    assert_selector "h1", text: "Stonks"
  end

  test "should create stonk" do
    visit stonks_url
    click_on "New stonk"

    fill_in "Bought price", with: @stonk.bought_price
    fill_in "Current price", with: @stonk.current_price
    fill_in "Stock abbreviation", with: @stonk.stock_abbreviation
    fill_in "Stock name", with: @stonk.stock_name
    fill_in "Stock type", with: @stonk.stock_type
    click_on "Create Stonk"

    assert_text "Stonk was successfully created"
    click_on "Back"
  end

  test "should update Stonk" do
    visit stonk_url(@stonk)
    click_on "Edit this stonk", match: :first

    fill_in "Bought price", with: @stonk.bought_price
    fill_in "Current price", with: @stonk.current_price
    fill_in "Stock abbreviation", with: @stonk.stock_abbreviation
    fill_in "Stock name", with: @stonk.stock_name
    fill_in "Stock type", with: @stonk.stock_type
    click_on "Update Stonk"

    assert_text "Stonk was successfully updated"
    click_on "Back"
  end

  test "should destroy Stonk" do
    visit stonk_url(@stonk)
    click_on "Destroy this stonk", match: :first

    assert_text "Stonk was successfully destroyed"
  end
end
