class AddTokenToDoodle < ActiveRecord::Migration[5.0]
  def change
    add_column :doodles, :token, :string
  end
end
