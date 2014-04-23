module OpenamGitlab
  module User
    extend ActiveSupport::Concern

    included do
      attr_accessor :token

      def self.existing_user_by_token(token)
        where(token: token).first if token
      end

      def self.update_openam_user(token, hash)
        if user = where({username: hash.fetch('uid'){raise 'uid is missing'}.first}).first
          user.update_column(:token, token)
        else
          user = self.new(openam_user_hash(token, hash))
          user.save(validate: false)
        end
        user
      end

      class << self
        private
        def openam_user_hash(token, hash)
          uid = hash.fetch('uid').first
          full_name = hash.fetch('cn').first
          email = hash.fetch('mail').first
          { username: uid, name: full_name, email: email, token: token }
        end
      end
    end
    
  end
end
