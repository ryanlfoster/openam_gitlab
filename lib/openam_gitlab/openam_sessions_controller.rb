module OpenamGitlab
  module SessionsController
    extend ActiveSupport::Concern

    included do
      def destroy
        openam_logout(current_user.token)
        redirect_to :root
      end
    end
  end
end
