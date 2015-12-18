require_relative './models/student.rb'
require_relative './models/teacher.rb'

# p name = Student.find(1)

# p Student.count
# p Teacher.count
studentsize = Student.count / Teacher.count

teacher_array = []

Teacher.find_each do |teacher|
	teacher_array << teacher.id
end
	# p teacher_array

Student.find_in_batches(batch_size: studentsize) do |x|
	current_teacher = teacher_array.shift
	x.each do |y|
		Student.update(y.id, {teacher_id: current_teacher} 
			)
			end

	end
