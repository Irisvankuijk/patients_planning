class CreateInterviews < ActiveRecord::Migration[5.1]
  def change
    create_table :interviews do |t|
      t.string :title
      t.text :notes
      t.datetime :date
      t.integer :patient_id

      t.timestamps
    end
  end
end
