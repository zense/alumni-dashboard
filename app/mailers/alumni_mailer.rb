class AlumniMailer < ApplicationMailer
      def test_mail(user,subject,body,attachmentname)
        @user=user
        @subject=subject
        @body=body
        @attachmentname=attachmentname
        attachments[@attachmentname] = File.read('public/attachments/'+@attachmentname)
        mail(to: @user.personal_mail, subject: @subject)
    end
end
