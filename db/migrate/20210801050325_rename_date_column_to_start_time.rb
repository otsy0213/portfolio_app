class RenameDateColumnToStartTime < ActiveRecord::Migration[6.1]
  def change
    rename_column :apos, :date, :start_time
  end
end
