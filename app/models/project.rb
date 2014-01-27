class Project < ActiveRecord::Base
  attr_accessible :Company_Name, :Live_Project, :Overview, :Project_Manager, :Project_Start_Date, :Status, :Team_Member_List, :Title
end
