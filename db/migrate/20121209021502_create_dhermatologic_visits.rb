class CreateDhermatologicVisits < ActiveRecord::Migration
  def change
    create_table :dhermatologic_visits do |t|
      t.integer :patient_id
      t.date :visit_date
      t.text :chief_complaint
      t.text :history_illness
      t.string :ex_general
      t.decimal :weight
      t.text :diagnosis
      t.text :medication
      t.text :procedures

      t.timestamps
    end
  end
end
