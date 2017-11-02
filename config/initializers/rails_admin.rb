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
                        puts(params.to_json)
                        if (params[:subject].blank?)
                            @objects=list_entries(@model_config, :post)
                            render @action.template_name
                        else
                            @subject=params[:subject]
                            @body=params[:body]
                            @objects=JSON.parse(params[:bulk_ids])
                            @objects=@objects.map { |e| Alumnus.find(e) }
                            @objects.each do |object|
                                AlumniMailer.test_mail(object,@subject,@body).deliver
                            end
                            redirect_to back_or_index
                            flash[:success] = "#{@model_config.label} successfully mailed."
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
