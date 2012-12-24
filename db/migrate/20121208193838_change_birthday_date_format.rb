class ChangeBirthdayDateFormat < ActiveRecord::Migration
  def change
    change_column :patients, :date_of_birth, :date
  end
end
