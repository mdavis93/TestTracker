class User < ApplicationRecord
  # Include default devise modules. Others available are:
  # :confirmable, :lockable, :timeoutable and :omniauthable
  devise :database_authenticatable, :registerable,
         :recoverable, :rememberable, :trackable, :validatable,
         :confirmable, :lockable

  has_one :instructor

  before_save { self.role ||= :inactive }

  enum role: %i[inactive instructor student_advisor
                registrar education_manager campus_director]



  def display_name(title = false)
    if title
      "#{fname} #{lname}, #{role.humanize.titleize}"
    else
      "#{fname} #{lname}"
    end
  end
end
