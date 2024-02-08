class Blog < ApplicationRecord
  belongs_to :student
  has_many :comments, as: :commentable
end
