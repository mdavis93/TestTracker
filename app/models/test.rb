class Test < ApplicationRecord
  belongs_to :course
  belongs_to :student

  enum result: %i[pass fail markdown absent]
  enum test_type: %i[written practical]
end
