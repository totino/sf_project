class Project < ActiveRecord::Base
  attr_accessible :end_date, :start_date, :title
  has_many :project_assignements
  has_many :employees, through: :project_assignement
end
