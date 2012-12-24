class CreatePatientProfiles < ActiveRecord::Migration
  def change
    create_table :patient_profiles do |t|
      t.integer :patient_id
      t.boolean :h_none
      t.boolean :h_cancer
      t.text :h_others

      t.timestamps
    end
  end
end
