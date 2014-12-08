class CreateApplications < ActiveRecord::Migration
  def change
    create_table :applications do |t|
      t.integer :projid
      t.text :title
      t.decimal :cost, precision:12, scale:0
      t.text :location

      t.timestamps
    end
  end
end
