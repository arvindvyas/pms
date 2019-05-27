class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :name
      t.string :description
      t.date :due_date
      t.integer :status
      t.integer :owner_id
      t.integer :project_id

      t.timestamps
    end
  end
end
