class Student < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_many :blogs
  has_and_belongs_to_many :courses
  has_many :student_projects
  has_many :projects, through: :student_projects
  has_one :profile

  after_create :age_calculation

  def age_calculation
    if self.date_of_birth.present?
      age = Date.today.year - self.date_of_birth.year
      puts "++++ Your age is #{age} ++++"
    else
      puts "+++ Cannot calculate age ++++"
    end
  end
end
