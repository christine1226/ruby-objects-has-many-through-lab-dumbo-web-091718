class Doctor

  attr_accessor :name, :appointment, :patient

  @@all = []

  def initialize(name)
    @name = name
    @@all << self
  end

  def self.all
    @@all
  end

  def appointments
    Appointment.all
  end

  def new_appointment(patient, date)
    Appointment.new(patient, self, date)
  end

  def patients
    Patient.all
  end

end
