require 'test_helper'

class DhermatologicVisitsControllerTest < ActionController::TestCase
  setup do
    @dhermatologic_visit = dhermatologic_visits(:one)
  end

  test "should get index" do
    get :index
    assert_response :success
    assert_not_nil assigns(:dhermatologic_visits)
  end

  test "should get new" do
    get :new
    assert_response :success
  end

  test "should create dhermatologic_visit" do
    assert_difference('DhermatologicVisit.count') do
      post :create, dhermatologic_visit: { chief_complaint: @dhermatologic_visit.chief_complaint, diagnosis: @dhermatologic_visit.diagnosis, ex_general: @dhermatologic_visit.ex_general, history_illness: @dhermatologic_visit.history_illness, medication: @dhermatologic_visit.medication, patient_id: @dhermatologic_visit.patient_id, procedures: @dhermatologic_visit.procedures, visit_date: @dhermatologic_visit.visit_date, weight: @dhermatologic_visit.weight }
    end

    assert_redirected_to dhermatologic_visit_path(assigns(:dhermatologic_visit))
  end

  test "should show dhermatologic_visit" do
    get :show, id: @dhermatologic_visit
    assert_response :success
  end

  test "should get edit" do
    get :edit, id: @dhermatologic_visit
    assert_response :success
  end

  test "should update dhermatologic_visit" do
    put :update, id: @dhermatologic_visit, dhermatologic_visit: { chief_complaint: @dhermatologic_visit.chief_complaint, diagnosis: @dhermatologic_visit.diagnosis, ex_general: @dhermatologic_visit.ex_general, history_illness: @dhermatologic_visit.history_illness, medication: @dhermatologic_visit.medication, patient_id: @dhermatologic_visit.patient_id, procedures: @dhermatologic_visit.procedures, visit_date: @dhermatologic_visit.visit_date, weight: @dhermatologic_visit.weight }
    assert_redirected_to dhermatologic_visit_path(assigns(:dhermatologic_visit))
  end

  test "should destroy dhermatologic_visit" do
    assert_difference('DhermatologicVisit.count', -1) do
      delete :destroy, id: @dhermatologic_visit
    end

    assert_redirected_to dhermatologic_visits_path
  end
end
