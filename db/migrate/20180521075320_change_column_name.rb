class ChangeColumnName < ActiveRecord::Migration[5.1]
  def change
  	rename_column :plannings, :postphoned_reason, :postponed_reason
  	rename_column :plannings, :postphoned_date, :postponed_date 	
  end
end
