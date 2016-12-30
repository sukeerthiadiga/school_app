# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


User.create!(name: 'mahabub', email: 'admin@gmail.com', password: '123456789', role: User::ROLES[:admin])

teacher = User.create!(name: 'teacher', email: 'teacher@gmail.com', password: '123456789', role: User::ROLES[:teacher])

course1 = teacher.courses.create(title: 'Test course', description: 'Description', code_number: 350)
course2 = teacher.courses.create(title: 'Test course2', description: 'Description2', code_number: 300)
course3 = teacher.courses.create(title: 'Test course3', description: 'Description3', code_number: 320)

klass1 = teacher.klasses.create(title: 'Test class', description: 'Description', course_id: course1.id)
klass2 = teacher.klasses.create(title: 'Test class2', description: 'Description2', course_id: course2.id)
klass3 = teacher.klasses.create(title: 'Test class3', description: 'Description2', course_id: course3.id)

student = User.create!(name: 'student', email: 'student@gmail.com', password: '123456789', role: User::ROLES[:student])

StudentClass.create!(klass_id: klass1.id, student_id: student.id, time: 50)
StudentClass.create!(klass_id: klass2.id, student_id: student.id, time: 55)
StudentClass.create!(klass_id: klass3.id, student_id: student.id, time: 60)
