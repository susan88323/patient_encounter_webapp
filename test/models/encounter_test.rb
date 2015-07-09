require 'test_helper'
 
class EncounterTest < ActiveSupport::TestCase
   
   test "should not save encounter without visitNumber and admittedAt" do
    encounter = Encounter.new
    assert_not encounter.save, "Saved the encounter without visitNumber and admittedAt"
   end
   
   test "should not save encounter without visitNumber" do
    encounter = Encounter.new(admittedAt: "2014-1-1")
    assert_not encounter.save, "Saved the encounter without visitNumber"
   end
   
   test "should not save encounter without admittedAt" do
    encounter = Encounter.new(visitNumber: "223")
    assert_not encounter.save, "Saved the encounter without admittedAt"
   end
   
   test "should save encounter with visitNumber and admittedAt" do
    encounter = Encounter.new(visitNumber: "43", admittedAt: "2014-1-1")
    assert encounter.save, "Not save the encounter with visitNumber and admittedAt"
   end
   
   
end