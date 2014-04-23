module OpenamGitlab
  class Railtie < Rails::Railtie
    config.after_initialize do
      ActionController::Base::ApplicationController.send(:include, OpenamAuth::Authenticate)
      Devise::SessionsController.send(:include, OpenamGitlab::SessionsController)
      ActiveRecord::Base::User.send(:include, OpenamGitlab::User)
    end
  end
end
