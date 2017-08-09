class DoctorPatientRelation < ApplicationRecord
  belongs_to :doctor, inverse_of: :doctor_patient_relation
  belongs_to :patient, inverse_of: :doctor_patient_relation
  # Source: https://rubyplus.com/articles/3681-Complex-Forms-in-Rails-5

  accepts_nested_attributes_for :doctor, :reject_if => :all_blank
  accepts_nested_attributes_for :patient, :reject_if => :all_blank
end
