class CreateSenators < ActiveRecord::Migration[8.0]
  def change
    create_table :senators do |t|
      t.string :name
      t.string :photo
      t.string :title

      t.timestamps
    end
  end
end
