class CreateTasklists < ActiveRecord::Migration[5.1]
  def change
    create_table :tasklists do |t|
      t.string :name, null: false
      t.references :user, foreign_key: true, null: false
      t.timestamps
    end
  end
end
