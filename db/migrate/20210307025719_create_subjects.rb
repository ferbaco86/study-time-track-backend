class CreateSubjects < ActiveRecord::Migration[6.1]
  def change
    create_table :subjects do |t|
      t.references :session, null: false, foreign_key: {to_table: :sessions}
      t.string :name
      t.time :time
      t.timestamps
    end
  end
end
