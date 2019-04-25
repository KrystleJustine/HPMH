require 'test_helper'

class HilbertPMsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @hilbert_pm = hilbert_pms(:one)
  end

  test "should get index" do
    get hilbert_pms_url
    assert_response :success
  end

  test "should get new" do
    get new_hilbert_pm_url
    assert_response :success
  end

  test "should create hilbert_pm" do
    assert_difference('AdminController.count') do
      post hilbert_pms_url, params: { hilbert_pm: { location: @hilbert_pm.location, name: @hilbert_pm.name } }
    end

    assert_redirected_to hilbert_pm_url(AdminController.last)
  end

  test "should show hilbert_pm" do
    get hilbert_pm_url(@hilbert_pm)
    assert_response :success
  end

  test "should get edit" do
    get edit_hilbert_pm_url(@hilbert_pm)
    assert_response :success
  end

  test "should update hilbert_pm" do
    patch hilbert_pm_url(@hilbert_pm), params: { hilbert_pm: { location: @hilbert_pm.location, name: @hilbert_pm.name } }
    assert_redirected_to hilbert_pm_url(@hilbert_pm)
  end

  test "should destroy hilbert_pm" do
    assert_difference('AdminController.count', -1) do
      delete hilbert_pm_url(@hilbert_pm)
    end

    assert_redirected_to hilbert_pms_url
  end
end
