class CreatePatients < ActiveRecord::Migration[5.1]
  def change
    create_table :patients do |t|
      t.string :name
      t.string :last_name
      t.datetime :date_birth
      t.string :gender
      t.string :main_condition
      t.string :location

      t.timestamps
    end
  end
end
