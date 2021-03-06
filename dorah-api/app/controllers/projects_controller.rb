class ProjectsController < ApplicationController
  before_action :set_project, only: [:show, :edit, :update, :destroy]

  respond_to :json

  def index
    @projects = Project.all
    render json: @projects, each_serializer: ProjectSerializer
  end

  def show
    render json: @project
  end

  def new
    @project = Project.new
    respond_with(@project)
  end

  def edit
  end

  def create
    @project = current_user.projects.build(project_params)
    @project.save
    render json: @project
  end

  def update
    @project.update(project_params)
    render json: @project
  end

  def destroy
    @project.destroy
    render json: @project
  end

  private
    def set_project
      @project = Project.find(params[:id])
    end

    def project_params
      params.require(:project).permit(
        :name,
        :description,
        :task_statuses,
        project_users: [
          :id,
          :email,
          :first_name,
          :last_name
        ],
        task_statuses_attributes: [
          :name,
          :project_id
        ]
      )
    end
end
