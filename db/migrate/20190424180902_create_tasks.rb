class CreateTasks < ActiveRecord::Migration[5.2]
  def change
    create_table :tasks do |t|
      t.string :title
      t.string :description
      t.string :status
      t.integer :project_id, foreign_key: true
      t.integer :lead_id, foreign_key: true



      t.timestamps
    end
  end
end
