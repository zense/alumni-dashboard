# alumni-dashboard
Building a dashboard for the alumni where they can view and update all their details like company, address etc. It also provides a administrative access for the college, where they can manage all their alumni databases, their details and send mails to bulk people based on some filter.

Using rails-admin as dashboard, a custom action for sending out mails is implemented with option to send bulk mails as well.  
Also has the functionality to send attachments.  
Using Froala editor.  

# Important setup instructions:
To set up your Gmail account set ENV variables as mentioned below:

-Add local_env.rb to /config

  Put this inside local_env.rb:

       ENV['GMAIL_USERNAME'] = 'YOUR GMAIL ID'

       ENV['GMAIL_PASSWORD'] = 'YOUR GMAIL PASSWORD'

To use custom parser:

-Write {{value}} when writing the body or subject of email,
    for eg. {{name}},{{email}},etc.
