# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

Course.destroy_all
Exam.destroy_all
Student.destroy_all
Instructor.destroy_all
User.destroy_all
Session.destroy_all
Cohort.destroy_all
Schedule.destroy_all

print 'Creating Cohort...'
Cohort.create(cohort_id: 'D0817L')
c = Cohort.first
puts 'Done!'

print 'Creating Students...'
5.times do
  Student.create(cohort_id: c.id, name: Faker::Name.name)
end
puts 'Done!'

print 'Creating Users...'
User.create(
  email: 'admin@testtracker.com',
  password: 'helloworld',
  confirmed_at: Time.now,
  role: :instructor,
  fname: 'Michael',
  lname: 'Davis'
)

User.create(
  email: 'test@testtracker.com',
  password: 'helloworld',
  confirmed_at: Time.now,
  role: :instructor,
  fname: 'Test',
  lname: 'Instructor'
)

User.all.each do |u|
  u.instructor = Instructor.create(user_id: u.id, campus_id: 18)
  u.save
end
puts 'Done!'

print 'Creating Sessions...'
Session.find_or_create_by(
  name: 'JAN2018A',
  first_day: Date.new(2018, 1, 1),
  last_day: Date.new(2018, 2, 4),
  deadline: Date.new(2018, 2, 16)
)
puts 'Done!'

print 'Creating Courses...'
Course.create(course_id: 'MAK111', session: Session.first, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'PEC111', session: Session.first, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'BUS119', session: Session.first, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'APP121', session: Session.first, instructor_id: Instructor.all.sample.id, shift: 0)
puts 'Done!'

print 'Creating Students...'
25.times do
  Student.all.sample.schedules.create(course_id: Course.all.sample.id, repeat: false)
end
puts 'Done!'

print 'Creating Exams...'
5.times do
  Course.all.each do |c|
    Student.all.each do |s|
      c.exams.create(
        student_id: s.id,
        exam_num: 1,
        retake: rand(2),
        makeup: rand(2),
        mod_by: User.first.id,
        exam_type: rand(2) == 1 ? 'written' : 'practical',
        result: rand(4)
      )
    end
  end
end
puts 'Done!'