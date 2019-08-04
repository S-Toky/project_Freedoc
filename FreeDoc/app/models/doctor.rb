class Doctor < ApplicationRecord
	belongs_to :city
	has_many :appointments #avoir beaucoup de rendez-vous
	has_many :specialties
	has_many :patients, through: :appointments
end
