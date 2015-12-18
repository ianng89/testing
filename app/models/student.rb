require_relative '../../db/config'
require 'date'

class Student < ActiveRecord::Base
	belongs_to :teachers
# implement your Student model here
validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, uniqueness: { case_sensitive: false }
validates :age, :numericality => { :greater_than_or_equal_to => 5 }
validate :validate_phone	

	def name

	"#{first_name} #{last_name}"

	end

	 def validate_phone
	        phone_num = phone.gsub(/[^\d]/, '')
	        if phone_num.length < 10
	            errors.add(:phone,"invalid phone number.")
	    	end
	 end
	def age
		now = Date.today
		age = now.year - birthday.year - ((now.month > birthday.month || (now.month == birthday.month && now.day >= birthday.day)) ? 0 : 1)
	end
end



# SELECT * FROM student 
# WHERE first_name = #{first_name

