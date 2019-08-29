class Patient < ApplicationRecord
  belongs_to :doctor
  has_many :appointments

  def appt_count
    self.appointment.count
  end
end
