class Appointment < ApplicationRecord
	belongs_to :doctor
	belongs_to :patient #appartient à un patient
	belongs_to :city
end
