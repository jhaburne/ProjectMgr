class CreateProjects < ActiveRecord::Migration
  def change
    create_table :projects do |t|
      t.string :Company_Name
      t.date :Project_Start_Date
      t.string :Project_Manager
      t.string :Title
      t.text :Overview
      t.string :Status
      t.boolean :Live_Project
      t.text :Team_Member_List

      t.timestamps
    end
  end
end
