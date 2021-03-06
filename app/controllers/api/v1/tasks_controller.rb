module Api
  module V1
    class TasksController < BaseController
      # doorkeeper_for :all
      before_action :doorkeeper_authorize!

      def index
        render json: current_user.tasks
      end

      def create
        task = current_user.tasks.create(task_params)
        render json: task
      end
      
      private
      def task_params
        params.require(:task).permit(:name)
      end
    end
  end
end
