require 'test_helper'

class PatientsControllerTest < ActionController::TestCase
   test "should get index" do
     get :index
     assert_response :success
   end
   
   test "should create patient" do
    assert_difference('Patient.count') do
     post :create, patient: {firstName: "Susan", lastName:"Wang", mrn:"THN888"}
    end
 
    assert_redirected_to patients_path
   end
   
   
end