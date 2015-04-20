module Api
  module V1
    class TasksController < ApplicationController

      def index
        render json: Task.all
      end

      def create
        task = Task.create(task_params)
        render json: task
      end
      
      private
      def task_params
        params.require(:task).permit(:name)
      end
    end
  end
end
