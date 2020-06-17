class ChangeDefaultInJobs < ActiveRecord::Migration[6.0]
  def change
    change_column_default :jobs, :completed, from: false, to: nil
  end
end
