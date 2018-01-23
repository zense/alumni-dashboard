require 'test_helper'

class RegsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @reg = regs(:one)
  end

  test "should get index" do
    get regs_url
    assert_response :success
  end

  test "should get new" do
    get new_reg_url
    assert_response :success
  end

  test "should create reg" do
    assert_difference('Reg.count') do
      post regs_url, params: { reg: { alumnus_id: @reg.alumnus_id, event_id: @reg.event_id, guests: @reg.guests } }
    end

    assert_redirected_to reg_url(Reg.last)
  end

  test "should show reg" do
    get reg_url(@reg)
    assert_response :success
  end

  test "should get edit" do
    get edit_reg_url(@reg)
    assert_response :success
  end

  test "should update reg" do
    patch reg_url(@reg), params: { reg: { alumnus_id: @reg.alumnus_id, event_id: @reg.event_id, guests: @reg.guests } }
    assert_redirected_to reg_url(@reg)
  end

  test "should destroy reg" do
    assert_difference('Reg.count', -1) do
      delete reg_url(@reg)
    end

    assert_redirected_to regs_url
  end
end
