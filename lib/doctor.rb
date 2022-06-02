require_relative "patient.rb"
require_relative "appointment.rb"

class Doctor

    attr_accessor :name
    
    @@all = []

    def initialize(name)
        @name = name 
        @@all << self 
    end 

    def new_appointment(date, patient)
        Appointment.new(date, patient, self)
    end 

    def self.all 
        @@all
    end 

    def appointments 
        Appointment.all.filter { |appt| appt.doctor == self}
    end

    def patients 
        appointments.collect { |appt| appt.patient }
    end 

end 
