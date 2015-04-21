module Api
  module V1
    class UsersController < BaseController
      # doorkeeper_for :all
      before_action :doorkeeper_authorize!

      def show
        render json: current_user.as_json(except: :password_digest)
      end

    end
  end
end
