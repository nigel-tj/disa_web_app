require 'test_helper'

class DiagnosedPatientsControllerTest < ActionDispatch::IntegrationTest
  setup do
    @diagnosed_patient = diagnosed_patients(:one)
  end

  test "should get index" do
    get diagnosed_patients_url
    assert_response :success
  end

  test "should get new" do
    get new_diagnosed_patient_url
    assert_response :success
  end

  test "should create diagnosed_patient" do
    assert_difference('DiagnosedPatient.count') do
      post diagnosed_patients_url, params: { diagnosed_patient: { age: @diagnosed_patient.age, disease_id: @diagnosed_patient.disease_id, gender: @diagnosed_patient.gender, latitude: @diagnosed_patient.latitude, longitude: @diagnosed_patient.longitude, status: @diagnosed_patient.status } }
    end

    assert_redirected_to diagnosed_patient_url(DiagnosedPatient.last)
  end

  test "should show diagnosed_patient" do
    get diagnosed_patient_url(@diagnosed_patient)
    assert_response :success
  end

  test "should get edit" do
    get edit_diagnosed_patient_url(@diagnosed_patient)
    assert_response :success
  end

  test "should update diagnosed_patient" do
    patch diagnosed_patient_url(@diagnosed_patient), params: { diagnosed_patient: { age: @diagnosed_patient.age, disease_id: @diagnosed_patient.disease_id, gender: @diagnosed_patient.gender, latitude: @diagnosed_patient.latitude, longitude: @diagnosed_patient.longitude, status: @diagnosed_patient.status } }
    assert_redirected_to diagnosed_patient_url(@diagnosed_patient)
  end

  test "should destroy diagnosed_patient" do
    assert_difference('DiagnosedPatient.count', -1) do
      delete diagnosed_patient_url(@diagnosed_patient)
    end

    assert_redirected_to diagnosed_patients_url
  end
end
