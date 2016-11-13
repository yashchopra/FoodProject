require 'test_helper'

class BusinessesControllerTest < ActionDispatch::IntegrationTest
  setup do
    @business = businesses(:one)
  end

  test "should get index" do
    get businesses_url
    assert_response :success
  end

  test "should get new" do
    get new_business_url
    assert_response :success
  end

  test "should create business" do
    assert_difference('Business.count') do
      post businesses_url, params: { business: { addCity: @business.addCity, addLine1: @business.addLine1, addLine2: @business.addLine2, addState: @business.addState, addZip: @business.addZip, email1: @business.email1, email2: @business.email2, name: @business.name, orgType: @business.orgType, phone: @business.phone, type: @business.type, website: @business.website } }
    end

    assert_redirected_to business_url(Business.last)
  end

  test "should show business" do
    get business_url(@business)
    assert_response :success
  end

  test "should get edit" do
    get edit_business_url(@business)
    assert_response :success
  end

  test "should update business" do
    patch business_url(@business), params: { business: { addCity: @business.addCity, addLine1: @business.addLine1, addLine2: @business.addLine2, addState: @business.addState, addZip: @business.addZip, email1: @business.email1, email2: @business.email2, name: @business.name, orgType: @business.orgType, phone: @business.phone, type: @business.type, website: @business.website } }
    assert_redirected_to business_url(@business)
  end

  test "should destroy business" do
    assert_difference('Business.count', -1) do
      delete business_url(@business)
    end

    assert_redirected_to businesses_url
  end
end
