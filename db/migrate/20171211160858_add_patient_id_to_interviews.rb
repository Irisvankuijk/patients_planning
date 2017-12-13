class AddPatientIdToInterviews < ActiveRecord::Migration[5.1]
  def change
    add_column :interviews, :patient_id, :integer
  end
end
