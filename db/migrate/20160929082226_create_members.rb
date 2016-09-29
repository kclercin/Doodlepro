class CreateMembers < ActiveRecord::Migration[5.0]
  def change
    create_table :members do |t|
      t.string :name
      t.string :mail
      t.text :dates

      t.timestamps
    end
  end
end
