require_relative '../config'

class AddTeacher < ActiveRecord::Migration

	def change
		add_column :students, :teacher_id, :integer 
		add_foreign_key :teacher_id
	end

end