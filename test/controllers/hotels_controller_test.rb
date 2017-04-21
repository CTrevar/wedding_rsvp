require 'test_helper'

class HotelsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hotel = hotels(:one)
  end

  test "should get index" do
    get admin_hotels_url
    assert_response :success
  end

  test "should get new" do
    get new_admin_hotel_url
    assert_response :success
  end

  test "should create hotel" do
    assert_difference('Hotel.count') do
      post admin_hotels_url, params: { hotel: { description: @hotel.description, link: @hotel.link, name: @hotel.name } }
    end

    assert_redirected_to admin_hotel_url(Hotel.last)
  end

  test "should show hotel" do
    get admin_hotel_url(@hotel)
    assert_response :success
  end

  test "should get edit" do
    get edit_admin_hotel_url(@hotel)
    assert_response :success
  end

  test "should update hotel" do
    patch admin_hotel_url(@hotel), params: { hotel: { description: @hotel.description, link: @hotel.link, name: @hotel.name } }
    assert_redirected_to admin_hotel_url(@hotel)
  end

  test "should destroy hotel" do
    assert_difference('Hotel.count', -1) do
      delete admin_hotel_url(@hotel)
    end

    assert_redirected_to admin_hotels_url
  end
end
