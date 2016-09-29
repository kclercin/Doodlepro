class AddDoodleToMember < ActiveRecord::Migration[5.0]
  def change
    add_reference :members, :doodle, foreign_key: true
  end
end
