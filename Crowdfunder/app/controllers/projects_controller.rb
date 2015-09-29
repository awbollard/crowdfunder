class ProjectsController < ApplicationController
  def new
    @project = Project.new
  end

  def create
    @project = Project.create(project_params)

    if @project.save
      redirect_to project_path (@project)
    else
      render :new
    end
  end

  def edit
    @project = Project.find_by(id: params[:id])
  end

  def show
    @project = Project.find_by(id: params[:id])
  end

  def update
    @project = Project.find_by(id: params[:id])

    if @project.update_attributes(project_params)
      redirect_to project_path(@project)
    else
      render :edit
    end
  end

  def destroy
    @project = Project.find_by(id: params[:id])
    @project.destroy
    redirect_to new_project_path
  end

  private
  def project_params
    params.require(:project).permit(:name, :description, :funding_goal, :deadline, :media, rewards_attributes: [:name, :description, :amount, :backer_limit])
  end
end
