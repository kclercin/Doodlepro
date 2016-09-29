class CreateDoodles < ActiveRecord::Migration[5.0]
  def change
    create_table :doodles do |t|
      t.string :name
      t.string :location
      t.text :description
      t.string :creator

      t.timestamps
    end
  end
end
