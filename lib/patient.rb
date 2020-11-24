class Patient
    @@all = []
    attr_accessor :name

    def initialize(name)
        @name = name 
        @@all << self
    end

    def self.all
        @@all
    end

    def new_appointment(doctor, date)
        #create a new appointment 
        Appointment.new(date, self, doctor)
    end

    def appointments
        #itereates over through the appointment's array and returns appointments that belong to the patient
        Appointment.all.select {|appointment| appointment.patient == self}
    end

    def doctors
        #iterate over the patient appo. and collects the doctor that belong to each appointment
        appointments.map(&:doctor)
    end

end