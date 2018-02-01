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
      post alumni_url, params: { alumnus: { college_mail: @alumnus.college_mail, company_name: @alumnus.company_name, designation: @alumnus.designation, facebook: @alumnus.facebook, grad_year: @alumnus.grad_year, linkedIn: @alumnus.linkedIn, location: @alumnus.location, name: @alumnus.name, personal_mail: @alumnus.personal_mail, phone_no: @alumnus.phone_no, roll_no: @alumnus.roll_no } }
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
    patch alumnus_url(@alumnus), params: { alumnus: { college_mail: @alumnus.college_mail, company_name: @alumnus.company_name, designation: @alumnus.designation, facebook: @alumnus.facebook, grad_year: @alumnus.grad_year, linkedIn: @alumnus.linkedIn, location: @alumnus.location, name: @alumnus.name, personal_mail: @alumnus.personal_mail, phone_no: @alumnus.phone_no, roll_no: @alumnus.roll_no } }
    assert_redirected_to alumnus_url(@alumnus)
  end

  test "should destroy alumnus" do
    assert_difference('Alumnus.count', -1) do
      delete alumnus_url(@alumnus)
    end

    assert_redirected_to alumni_url
  end
end
