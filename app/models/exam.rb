class Exam < ApplicationRecord
  belongs_to :course
  belongs_to :student

  enum result: %i[pass fail markdown absent]
  enum exam_type: %i[written practical]

  def session
    course.session.name.last
  end
end
