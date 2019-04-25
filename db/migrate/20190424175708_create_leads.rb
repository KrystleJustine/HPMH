class CreateLeads < ActiveRecord::Migration[5.2]
  def change
    create_table :leads do |t|
      t.string :name
      t.string :stack
      t.string :img
      t.integer :admin_id, foreign_key: true

      t.timestamps
    end
  end
end
