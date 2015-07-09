class Patient < ActiveRecord::Base
  has_many :encounters, dependent: :destroy
  
  validates :firstName, :lastName, :mrn, :presence => true
  validates :mrn, uniqueness: true
end