class Patient

  attr_accessor :appointments

  def initialize(name)
    @name=name
    @appointments=[]
    #@appointment.add_appointment(self)
  end

  def add_appointment(appointment)
    appointments<<appointment
    appointment.patient=self
  end

  def doctors 
    @appointments.collect do |appointment|
      appointment.doctor
    end
  end

end