class ChangeTimeToFloatFromSubjects < ActiveRecord::Migration[6.1]
  def up
    change_column :subjects, :time, 'float USING CAST(time AS float)'
  end
  def down
    change_column :subjects, :time, :string
  end
end