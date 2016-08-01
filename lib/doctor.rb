require 'pry'

class Doctor

  attr_reader :name, :patient
  attr_accessor :appointments

  def initialize(name)
    @name=name
    @appointments=[]
    @patients=[]
  end

  def add_appointment (appointment)
    @appointments<<appointment
    appointment.doctor=self
    #binding.pry
  end

  def patients 
    @appointments.collect do |appointment|
      appointment.patient
    end
  end

end