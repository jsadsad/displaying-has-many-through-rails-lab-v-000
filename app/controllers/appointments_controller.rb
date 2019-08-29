class AppointmentsController < ApplicationController

  def index
  end=
  def show
    @appointment = Appointment.find(params[:id])
  end

  def create
    @appointment = Appointment.create(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def new
    @appointment = Appointment.new
  end

  def edit
    @appointment = Appointment.find(params[:id])
  end

  def update
    @appointment = Appointment.find(params[:id])
    @appointment.update(appointment_params)
    redirect_to appointment_path(@appointment)
  end

  def destroy
    @appointment = Appointment.find(params[:id])
    @appointment.destroy
    redirect_to appointment_path
  end

  private

  def appointment_params
    params.require(:appointment).permit(:date_time, :doctor_id, :patient_id)
  end
end
