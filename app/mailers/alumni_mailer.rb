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
        mail(to: @user.email, subject: @subject)
    end

    def send_welcome_message(user)
      @user=user
      mail(to: @user.email, subject: "Welcome to IIITB Alumni Network")
    end
end
