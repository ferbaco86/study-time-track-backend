class RemoveTotalTimeFromSession < ActiveRecord::Migration[6.1]
  def change
    remove_column :sessions, :total_time, :time
  end
end
