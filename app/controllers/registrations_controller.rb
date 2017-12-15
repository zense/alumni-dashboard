class RegistrationsController < Devise::RegistrationsController

  def create
    super
    if(@alumnus.persisted?)
      AlumniMailer.send_welcome_message(@alumnus).deliver
    end
  end

end
