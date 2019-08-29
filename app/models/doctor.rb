class Doctor < ApplicationRecord
  has_many :patients
  has_many :appointments

  def patient_count
    self.patient_count
  end 
end
