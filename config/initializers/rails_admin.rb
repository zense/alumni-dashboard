module RailsAdmin
    module Config
        module Actions
            class BulkMail < RailsAdmin::Config::Actions::Base
                RailsAdmin::Config::Actions.register(self)
                register_instance_option :collection do true end
                register_instance_option :bulkable? do true end
                register_instance_option :http_methods do [:get,:post] end
                register_instance_option :link_icon do
                    'icon-envelope'
                end
                register_instance_option :controller do
                    proc do
                        if (params[:subject].blank?)
                            @objects=list_entries(@model_config, :post)
                            render @action.template_name
                        else
                            @subject=params[:subject]
                            @body=params[:body]
                            @attachments=[]
                            uploader = AttachmentUploader.new
                            (params[:attachments] || []).each do |attachment|
                                uploader.store!(attachment)
                                @attachments<<uploader.filename
                            end
                            @body_temp = Liquid::Template.parse (@body)
                            @subject_temp = Liquid::Template.parse (@subject)
                            @objects=JSON.parse(params[:bulk_ids])
                            @objects=@objects.map { |e| Alumnus.find(e) }
                            @objects.each do |object|
                                @body=@body_temp.render(
                                'roll_no'=>object.roll_no ,
                                'name'=>object.name ,
                                'grad_year'=>object.grad_year ,
                                'personal_mail'=>object.personal_mail ,
                                'college_mail'=>object.college_mail ,
                                'phone_no'=>object.phone_no ,
                                'company_name'=>object.company_name ,
                                'designation'=>object.designation ,
                                'location'=>object.location ,
                                'linkedIn'=>object.linkedIn ,
                                'facebook'=>object.facebook
                                )
                                @subject=@subject_temp.render(
                                'roll_no'=>object.roll_no ,
                                'name'=>object.name ,
                                'grad_year'=>object.grad_year ,
                                'personal_mail'=>object.personal_mail ,
                                'college_mail'=>object.college_mail ,
                                'phone_no'=>object.phone_no ,
                                'company_name'=>object.company_name ,
                                'designation'=>object.designation ,
                                'location'=>object.location ,
                                'linkedIn'=>object.linkedIn ,
                                'facebook'=>object.facebook
                                )
                                AlumniMailer.test_mail(object,@subject,@body,@attachments).deliver_later
                            end
                            redirect_to back_or_index
                            flash[:waiting] = "Mailing process started, check Sidekiq dashboard to see unsent mails(All the unsent mails will be added to the 'dead' section after the process is finished)"

                        end
                    end
                end
            end
        end
    end
end

RailsAdmin.config do |config|

  ### Popular gems integration

  ## == Devise ==
  # config.total_columns_width = 1000
  config.default_items_per_page = 1000
  config.navigation_static_links = {
  'Sidekiq Dashboard' => '/sidekiq/morgue' #or whatever you used to mount RailsAdmin in your routes file
  }
  config.authenticate_with do
    warden.authenticate! scope: :alumnus
  end
  config.current_user_method(&:current_alumnus)

  ## == Cancan ==
  config.authorize_with :cancan
  config.parent_controller = 'ApplicationController'

  ## == Pundit ==
  # config.authorize_with :pundit

  ## == PaperTrail ==
  # config.audit_with :paper_trail, 'User', 'PaperTrail::Version' # PaperTrail >= 3.0.0

  ### More at https://github.com/sferik/rails_admin/wiki/Base-configuration

  ## == Gravatar integration ==
  ## To disable Gravatar integration in Navigation Bar set to false
  # config.show_gravatar = true

  config.actions do
    dashboard                     # mandatory
    index                         # mandatory
    new
    export
    bulk_delete
    show
    edit
    delete
    show_in_app
    bulk_mail
    ## With an audit adapter, you can add:
    # history_index
    # history_show
  end
end
