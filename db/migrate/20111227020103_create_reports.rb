class CreateReports < ActiveRecord::Migration
  def change
    create_table :reports do |t|
      t.integer :night_hours
      t.integer :day_hours
      t.integer :total_hours
      t.integer :total_salary

      t.timestamps
    end
  end
end
