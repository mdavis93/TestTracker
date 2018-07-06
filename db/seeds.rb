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

print 'Creating Cohort.....'
Cohort.create(cohort_id: 'D0817L')
c = Cohort.first
puts "Done!\t#{Cohort.count} Entries Created"

print 'Creating Students...'
50.times do
  s = Student.new(cohort_id: c.id, name: Faker::Name.unique.name)
  while s.name.split(' ').count > 2 do
    s = Student.new(cohort_id: c.id, name: Faker::Name.unique.name)
  end
  s.save
end
puts "Done!\t#{Student.count} Entries Created"

print 'Creating Users......'
User.create(
  email: 'test@testtracker.com',
  password: 'helloworld',
  confirmed_at: Time.now,
  role: :instructor,
  fname: 'Test',
  lname: 'Instructor'
)

User.create(
  email: 'other@testtracker.com',
  password: 'helloworld',
  confirmed_at: Time.now,
  role: :instructor,
  fname: 'Another',
  lname: 'Instructor'
)

User.all.each do |u|
  u.instructor = Instructor.create(user_id: u.id, campus_id: 18)
  u.save
end
puts "Done!\t#{User.count} Entries Created"

print 'Creating Sessions...'
Session.find_or_create_by(
  name: 'JAN2018A',
  first_day: Date.new(2018, 1, 1),
  last_day: Date.new(2018, 2, 4),
  deadline: Date.new(2018, 2, 16)
)
Session.find_or_create_by(
  name: 'JAN2018B',
  first_day: Date.new(2018, 2, 5),
  last_day: Date.new(2018, 3, 11),
  deadline: Date.new(2018, 3, 23)
)
puts "Done!\t#{Session.count} Entries Created"

print 'Creating Courses...'
Course.create(course_id: 'MAK111', session: Session.all.sample, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'PEC111', session: Session.all.sample, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'BUS119', session: Session.all.sample, instructor_id: Instructor.all.sample.id, shift: 0)
Course.create(course_id: 'APP121', session: Session.all.sample, instructor_id: Instructor.all.sample.id, shift: 0)
puts "Done!\t#{Course.count} Entries Created"

print 'Creating Schedules...'
15.times do
  Student.all.sample.schedules.create(course_id: Course.all.sample.id, repeat: false)
end
puts "Done!\t#{Schedule.count} Entries Created"

print 'Creating Exams......'
Course.all.each do |c|
  rand(10..25).times do |n|
    c.exams.create(
      student_id: Student.find(n + 1).id,
      exam_num: 1,
      retake: rand(2),
      makeup: rand(2),
      mod_by: User.first.id,
      exam_type: rand(2) == 1 ? 'written' : 'practical',
      result: rand(5)
    )
  end
end
puts "Done!\t#{Exam.count} Entries Created"