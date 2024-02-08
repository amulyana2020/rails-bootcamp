class Project < ApplicationRecord
  validates :name, :description, presence: true
  has_many :student_projects
  has_many :students, through: :student_projects
end
