class CreatePatients < ActiveRecord::Migration
  def change
    create_table :patients do |t|
      t.string :first_name
      t.string :last_name
      t.datetime :date_of_birth
      t.string :mobile_number

      t.timestamps
    end
  end
end
