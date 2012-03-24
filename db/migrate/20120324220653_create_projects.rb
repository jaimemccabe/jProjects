class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.date :started_on
      t.date :completed_on
      t.string :name

      t.timestamps
    end
  end
end
