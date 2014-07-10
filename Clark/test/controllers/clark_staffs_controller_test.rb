require 'test_helper'

class ClarkStaffsControllerTest < ActionController::TestCase
  setup do
    @clark_staff = clark_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:clark_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create clark_staff" do
    assert_difference('ClarkStaff.count') do
      post :create, clark_staff: { birthday: @clark_staff.birthday, department: @clark_staff.department, gender: @clark_staff.gender, name: @clark_staff.name }
    end

    assert_redirected_to clark_staff_path(assigns(:clark_staff))
  end

  test "should show clark_staff" do
    get :show, id: @clark_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @clark_staff
    assert_response :success
  end

  test "should update clark_staff" do
    patch :update, id: @clark_staff, clark_staff: { birthday: @clark_staff.birthday, department: @clark_staff.department, gender: @clark_staff.gender, name: @clark_staff.name }
    assert_redirected_to clark_staff_path(assigns(:clark_staff))
  end

  test "should destroy clark_staff" do
    assert_difference('ClarkStaff.count', -1) do
      delete :destroy, id: @clark_staff
    end

    assert_redirected_to clark_staffs_path
  end
end
