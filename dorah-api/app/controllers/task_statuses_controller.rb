class TaskStatusesController < ApplicationController
  before_action :set_task_status, only: [:show, :edit, :update, :destroy]

  respond_to :html

  def index
    @task_statuses = TaskStatus.all
    render json: @task_statuses, each_serializer: TaskStatusSerializer
  end

  def show
    render json: @task_status
  end

  def new
    @task_status = TaskStatus.new
    render json: @task_status
  end

  def edit
  end

  def create
    @task_status = current_user.task_statuses.build(task_status_params)
    @task_status.save
    render json: @task_status
  end

  def update
    @task_status.update(task_status_params)
    render json: @task_status
  end

  def destroy
    @task_status.destroy
    render json: @task_status
  end

  private
    def set_task_status
      @task_status = TaskStatus.find(params[:id])
    end

    def task_params
      params.require(:task).permit(
        :name,
        :project_id
      )
    end
end
