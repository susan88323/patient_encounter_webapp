require 'test_helper'
 
class PatientTest < ActiveSupport::TestCase
   test "the truth" do
     assert true
   end
   
   test "should not save patient without firstName lastName and mrn" do
    patient = Patient.new
    assert_not patient.save, "Saved the patient without firstName lastName and mrn"
   end
   
   test "should not save patient without firstName" do
    patient = Patient.new(lastName: "Smith", mrn: "TNH124")
    assert_not patient.save, "Saved the patient without firstName"
   end
   
   test "should not save patient without lastName" do
    patient = Patient.new(firstName: "John", mrn: "TNH124")
    assert_not patient.save, "Saved the patient without lastName"
   end
   
   test "should not save patient without mrn" do
    patient = Patient.new(firstName: "John", lastName: "Graff")
    assert_not patient.save, "Saved the patient without mrn"
   end
   
    test "should save patient with firstName lastName and mrn" do
    patient = Patient.new(firstName: "Susan", lastName: "Wang", mrn: "TNH123")
    assert patient.save, "Not save the patient with firstName lastName and mrn"
    
    #patient2 = Patient.new(firstName: "Nancy", lastName: "Wade", mrn: "TNH123")
    #assert patient2.save, "Saved the patients with the same MRN"
   end
   
   
end