class CreateSchedules < ActiveRecord::Migration[8.0]
  def change
    create_table :schedules do |t|
      t.string :name
      t.timestamp :time

      t.timestamps
    end
  end
end
