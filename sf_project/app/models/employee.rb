class Employee < ActiveRecord::Base
  attr_accessible :account, :first_name, :index_no, :last_name
  has_many :project_assignements
  has_many :projects, through: :project_assignements
end
