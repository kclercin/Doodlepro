class AddDatesToDoodle < ActiveRecord::Migration[5.0]
  def change
    add_column :doodles, :dates, :text
  end
end
