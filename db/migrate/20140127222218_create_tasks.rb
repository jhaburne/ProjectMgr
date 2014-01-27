class CreateTasks < ActiveRecord::Migration
  def change
    create_table :tasks do |t|
      t.string :Task_Title
      t.text :Task_Description
      t.string :Assigned_to
      t.date :Task_assigned
      t.date :Projected_Completion_Date
      t.boolean :Task_on_Schedule

      t.timestamps
    end
  end
end
