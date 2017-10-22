class AlumniMailer < ApplicationMailer
    def test_mail(user,subject,body)
        @user=user
        @subject=subject
        @body=body
        mail(to: @user.email, subject: @subject, body: @body)
    end
end
