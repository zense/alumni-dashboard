# alumni-dashboard

To set up your Gmail account set ENV variables as mentioned below:

-Add local_env.rb to /config

  Put this inside local_env.rb:

       ENV['GMAIL_USERNAME'] = 'YOUR GMAIL ID'

       ENV['GMAIL_PASSWORD'] = 'YOUR GMAIL PASSWORD'

To use custom parser:

-Write {{value}} when writing the body or subject of email,
    for eg. {{name}},{{email}},etc.
