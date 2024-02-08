class Student < ApplicationRecord
  validates :first_name, :last_name, :email, presence: true

  has_many :blogs
  has_and_belongs_to_many :courses
end
