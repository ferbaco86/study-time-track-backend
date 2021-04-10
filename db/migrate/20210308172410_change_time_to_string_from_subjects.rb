class ChangeTimeToStringFromSubjects < ActiveRecord::Migration[6.1]
  def up
    change_column :subjects, :time, :string
  end
  def down
    change_column :subjects, :time, :time
  end
end
