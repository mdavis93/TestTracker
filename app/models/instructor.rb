class Instructor < ApplicationRecord
  belongs_to :user
  has_many :courses
  has_many :students, through: :courses

  def name
    "#{user.fname} #{user.lname}"
  end
end
