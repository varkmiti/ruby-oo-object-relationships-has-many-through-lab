class Appointment 

    attr_accessor :date, :patient
    attr_reader :doctor

    @@all = []

    def initialize(date, patient, doctor)
        @date = date 
        @doctor = doctor
        @patient = patient
        @@all << self 
    end 

    def self.all 
        @@all
    end 
end 

