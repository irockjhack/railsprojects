require 'test_helper'

class UniqueWhitelinesControllerTest < ActionController::TestCase
  setup do
    @unique_whiteline = unique_whitelines(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:unique_whitelines)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create unique_whiteline" do
    assert_difference('UniqueWhiteline.count') do
      post :create, unique_whiteline: { softbank_phone_number: @unique_whiteline.softbank_phone_number }
    end

    assert_redirected_to unique_whiteline_path(assigns(:unique_whiteline))
  end

  test "should show unique_whiteline" do
    get :show, id: @unique_whiteline
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @unique_whiteline
    assert_response :success
  end

  test "should update unique_whiteline" do
    patch :update, id: @unique_whiteline, unique_whiteline: { softbank_phone_number: @unique_whiteline.softbank_phone_number }
    assert_redirected_to unique_whiteline_path(assigns(:unique_whiteline))
  end

  test "should destroy unique_whiteline" do
    assert_difference('UniqueWhiteline.count', -1) do
      delete :destroy, id: @unique_whiteline
    end

    assert_redirected_to unique_whitelines_path
  end
end
