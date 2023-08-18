require "test_helper"

class StonksControllerTest < ActionDispatch::IntegrationTest
  setup do
    @stonk = stonks(:one)
  end

  test "should get index" do
    get stonks_url
    assert_response :success
  end

  test "should get new" do
    get new_stonk_url
    assert_response :success
  end

  test "should create stonk" do
    assert_difference("Stonk.count") do
      post stonks_url, params: { stonk: { bought_price: @stonk.bought_price, current_price: @stonk.current_price, stock_abbreviation: @stonk.stock_abbreviation, stock_name: @stonk.stock_name, stock_type: @stonk.stock_type } }
    end

    assert_redirected_to stonk_url(Stonk.last)
  end

  test "should show stonk" do
    get stonk_url(@stonk)
    assert_response :success
  end

  test "should get edit" do
    get edit_stonk_url(@stonk)
    assert_response :success
  end

  test "should update stonk" do
    patch stonk_url(@stonk), params: { stonk: { bought_price: @stonk.bought_price, current_price: @stonk.current_price, stock_abbreviation: @stonk.stock_abbreviation, stock_name: @stonk.stock_name, stock_type: @stonk.stock_type } }
    assert_redirected_to stonk_url(@stonk)
  end

  test "should destroy stonk" do
    assert_difference("Stonk.count", -1) do
      delete stonk_url(@stonk)
    end

    assert_redirected_to stonks_url
  end
end
