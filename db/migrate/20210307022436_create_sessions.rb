class CreateSessions < ActiveRecord::Migration[6.1]
  def change
    create_table :sessions do |t|
      t.references :user, null: false, foreign_key: {to_table: :users}
      t.string :title
      t.time :total_time
      t.timestamps
    end
  end
end
