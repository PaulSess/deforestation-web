class Project < ApplicationRecord
  belongs_to :departments, foreign_key: 'department_id'
  has_many :users, foreign_key: 'department_id' #, class_name: 'Users'
end
