require_relative '../../db/config'

class Teacher < ActiveRecord::Base

has_many :students_teachers
has_many :students, through: :students_teachers

validates :email, :format => { :with => /\w+[@]\w+[.]\w{1}\w+/}, uniqueness: { case_sensitive: false }
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

end