require 'test_helper'

class AlumniControllerTest < ActionDispatch::IntegrationTest
  setup do
    @alumnus = alumni(:one)
  end

  test "should get index" do
    get alumni_url
    assert_response :success
  end

  test "should get new" do
    get new_alumnus_url
    assert_response :success
  end

  test "should create alumnus" do
    assert_difference('Alumnus.count') do
      post alumni_url, params: { alumnus: {  } }
    end

    assert_redirected_to alumnus_url(Alumnus.last)
  end

  test "should show alumnus" do
    get alumnus_url(@alumnus)
    assert_response :success
  end

  test "should get edit" do
    get edit_alumnus_url(@alumnus)
    assert_response :success
  end

  test "should update alumnus" do
    patch alumnus_url(@alumnus), params: { alumnus: {  } }
    assert_redirected_to alumnus_url(@alumnus)
  end

  test "should destroy alumnus" do
    assert_difference('Alumnus.count', -1) do
      delete alumnus_url(@alumnus)
    end

    assert_redirected_to alumni_url
  end
end
