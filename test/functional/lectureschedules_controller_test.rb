require 'test_helper'

class LectureschedulesControllerTest < ActionController::TestCase
  setup do
    @lectureschedule = lectureschedules(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:lectureschedules)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create lectureschedule" do
    assert_difference('Lectureschedule.count') do
      post :create, lectureschedule: { course_id: @lectureschedule.course_id, day: @lectureschedule.day, notes: @lectureschedule.notes, timefrom: @lectureschedule.timefrom, timeto: @lectureschedule.timeto, venue: @lectureschedule.venue }
    end

    assert_redirected_to lectureschedule_path(assigns(:lectureschedule))
  end

  test "should show lectureschedule" do
    get :show, id: @lectureschedule
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @lectureschedule
    assert_response :success
  end

  test "should update lectureschedule" do
    put :update, id: @lectureschedule, lectureschedule: { course_id: @lectureschedule.course_id, day: @lectureschedule.day, notes: @lectureschedule.notes, timefrom: @lectureschedule.timefrom, timeto: @lectureschedule.timeto, venue: @lectureschedule.venue }
    assert_redirected_to lectureschedule_path(assigns(:lectureschedule))
  end

  test "should destroy lectureschedule" do
    assert_difference('Lectureschedule.count', -1) do
      delete :destroy, id: @lectureschedule
    end

    assert_redirected_to lectureschedules_path
  end
end
