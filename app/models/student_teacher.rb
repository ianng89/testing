require_relative '../../db/config'
require 'date'

class StudentTeacher < ActiveRecord::Base
	belongs_to :students
	belongs_to :teachers 

end