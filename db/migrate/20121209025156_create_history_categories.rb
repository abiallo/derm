class CreateHistoryCategories < ActiveRecord::Migration
  def change
    create_table :history_categories do |t|
      t.string :name

      t.timestamps
    end
  end
end
