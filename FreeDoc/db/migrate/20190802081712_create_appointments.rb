class CreateAppointments < ActiveRecord::Migration[5.2]
  def change
    create_table :appointments do |t|
      t.datetime :date
     	t.belongs_to :doctor, index: true #le rendez-vous appartient à un doctor
    	t.belongs_to :patient, index: true #le rendez-vous appartient à un patient

      t.timestamps
    end
  end
end
