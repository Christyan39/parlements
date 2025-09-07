class AddDepartmentRefToSenator < ActiveRecord::Migration[8.0]
  def change
    add_reference :senators, :department, null: false, foreign_key: true
  end
end
