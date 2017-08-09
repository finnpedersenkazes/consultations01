class Doctor < ApplicationRecord
  has_many :doctor_patient_relations, inverse_of: :doctor, dependent: :destroy
  has_many :patients, through: :doctor_patient_relations, :class_name => 'Patient'

  accepts_nested_attributes_for :doctor_patient_relations
  accepts_nested_attributes_for :patients
  validates :name, presence: true

  # source: The :has_many :through relation
  # https://github.com/nathanvda/cocoon/wiki/A-guide-to-doing-nested-model-forms#the-has_many-through-relation
end
