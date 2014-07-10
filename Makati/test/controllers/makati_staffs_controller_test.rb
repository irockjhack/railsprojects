require 'test_helper'

class MakatiStaffsControllerTest < ActionController::TestCase
  setup do
    @makati_staff = makati_staffs(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:makati_staffs)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create makati_staff" do
    assert_difference('MakatiStaff.count') do
      post :create, makati_staff: { age: @makati_staff.age, department: @makati_staff.department, gender: @makati_staff.gender, name: @makati_staff.name }
    end

    assert_redirected_to makati_staff_path(assigns(:makati_staff))
  end

  test "should show makati_staff" do
    get :show, id: @makati_staff
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @makati_staff
    assert_response :success
  end

  test "should update makati_staff" do
    patch :update, id: @makati_staff, makati_staff: { age: @makati_staff.age, department: @makati_staff.department, gender: @makati_staff.gender, name: @makati_staff.name }
    assert_redirected_to makati_staff_path(assigns(:makati_staff))
  end

  test "should destroy makati_staff" do
    assert_difference('MakatiStaff.count', -1) do
      delete :destroy, id: @makati_staff
    end

    assert_redirected_to makati_staffs_path
  end
end
