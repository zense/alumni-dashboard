class AlumniMailer < ApplicationMailer
      def test_mail(user,subject,body,attachmentnames)
        @user=user
        @subject=subject
        @body=body
        @attachments=attachmentnames
        @attachments.each do |attachmentname|
          puts attachmentname
          attachments[attachmentname] = File.read('public/attachments/'+attachmentname)
        end
        mail(to: @user.personal_mail, subject: @subject)
    end
end
