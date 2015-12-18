class Person < ActiveRecord::Base
end

class Student < Person
  has_many :student_teachers, :foreign_key => :student_id
  has_many :teachers, :through => :student_teachers
end

class Teacher < Person
  # What relations go here?
end

class StudentTeacher < ActiveRecord::Base
  belongs_to :student
  belongs_to :teacher
end