class Task < ActiveRecord::Base
  attr_accessible :Assigned_to, :Projected_Completion_Date, :Task_Description, :Task_Title, :Task_assigned, :Task_on_Schedule
end
