class AddInProgressToUsers < ActiveRecord::Migration[6.0]
  def change
    add_column :users, :in_progress, :boolean, default: true
  end
end
