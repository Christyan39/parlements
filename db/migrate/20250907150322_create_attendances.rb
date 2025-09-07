class CreateAttendances < ActiveRecord::Migration[8.0]
  def change
    create_table :attendances do |t|
      t.references :senator, null: false, foreign_key: true
      t.references :schedule, null: false, foreign_key: true

      t.timestamps
    end
  end
end
