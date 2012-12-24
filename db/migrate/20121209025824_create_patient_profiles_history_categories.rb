class CreatePatientProfilesHistoryCategories < ActiveRecord::Migration
  def up
    create_table :patient_profiles_history_categories, :id => false do |t|
      t.references :patient_profile
      t.references :history_category
    end
  end

  def down
    drop_table :patient_profiles_history_categories
  end
end
