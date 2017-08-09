class Createdoctor_patient_relation < ActiveRecord::Migration[5.0]
  def change
    create_table :doctor_patient_relations do |t|
      t.string :location
      t.references doctor, foreign_key: true, index: true
      t.references patient, foreign_key: true, index: true
      t.timestamps null: false
    end
  end
end
