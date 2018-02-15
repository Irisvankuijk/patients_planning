class CreatePlannings < ActiveRecord::Migration[5.1]
  def change
    create_table :plannings do |t|
      t.string :status
      t.text :postphoned_reason
      t.date :postphoned_date
      t.datetime :scheduled_datetime
      t.string :scheduled_interviewer
      t.string :scheduled_location
      t.text :excluded_reason
      t.text :declined_reason

      t.timestamps
    end
  end
end
