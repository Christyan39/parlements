class CreateParties < ActiveRecord::Migration[8.0]
  def change
    create_table :parties do |t|
      t.string :name
      t.string :logo

      t.timestamps
    end
  end
end
