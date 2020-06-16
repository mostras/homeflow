class AddReferenceToUser < ActiveRecord::Migration[6.0]
  def change
    add_reference :users, :constructor, null: true, foreign_key: { to_table: :users }
  end
end
