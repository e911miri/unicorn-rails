require 'test_helper'

class CoursematerialsControllerTest < ActionController::TestCase
  setup do
    @coursematerial = coursematerials(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:coursematerials)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create coursematerial" do
    assert_difference('Coursematerial.count') do
      post :create, coursematerial: { course_id: @coursematerial.course_id, material_path: @coursematerial.material_path, notes: @coursematerial.notes, title: @coursematerial.title, type: @coursematerial.type }
    end

    assert_redirected_to coursematerial_path(assigns(:coursematerial))
  end

  test "should show coursematerial" do
    get :show, id: @coursematerial
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @coursematerial
    assert_response :success
  end

  test "should update coursematerial" do
    put :update, id: @coursematerial, coursematerial: { course_id: @coursematerial.course_id, material_path: @coursematerial.material_path, notes: @coursematerial.notes, title: @coursematerial.title, type: @coursematerial.type }
    assert_redirected_to coursematerial_path(assigns(:coursematerial))
  end

  test "should destroy coursematerial" do
    assert_difference('Coursematerial.count', -1) do
      delete :destroy, id: @coursematerial
    end

    assert_redirected_to coursematerials_path
  end
end
