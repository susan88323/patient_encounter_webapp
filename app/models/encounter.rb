class Encounter < ActiveRecord::Base
  belongs_to :patient
  
  validates :visitNumber, :admittedAt, :presence => true
end