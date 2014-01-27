# encoding: UTF-8
# This file is auto-generated from the current state of the database. Instead
# of editing this file, please use the migrations feature of Active Record to
# incrementally modify your database, and then regenerate this schema definition.
#
# Note that this schema.rb definition is the authoritative source for your
# database schema. If you need to create the application database on another
# system, you should be using db:schema:load, not running all the migrations
# from scratch. The latter is a flawed and unsustainable approach (the more migrations
# you'll amass, the slower it'll run and the greater likelihood for issues).
#
# It's strongly recommended to check this file into your version control system.

ActiveRecord::Schema.define(:version => 20140127222218) do

  create_table "projects", :force => true do |t|
    t.string   "Company_Name"
    t.date     "Project_Start_Date"
    t.string   "Project_Manager"
    t.string   "Title"
    t.text     "Overview"
    t.string   "Status"
    t.boolean  "Live_Project"
    t.text     "Team_Member_List"
    t.datetime "created_at",         :null => false
    t.datetime "updated_at",         :null => false
  end

  create_table "tasks", :force => true do |t|
    t.string   "Task_Title"
    t.text     "Task_Description"
    t.string   "Assigned_to"
    t.date     "Task_assigned"
    t.date     "Projected_Completion_Date"
    t.boolean  "Task_on_Schedule"
    t.datetime "created_at",                :null => false
    t.datetime "updated_at",                :null => false
  end

end
