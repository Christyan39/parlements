class AddPartyRefToSenators < ActiveRecord::Migration[8.0]
  def change
    add_reference :senators, :party, null: false, foreign_key: true
  end
end
