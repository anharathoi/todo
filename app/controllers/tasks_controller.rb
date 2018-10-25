class TasksController < ApplicationController
  
  def index
    @tasks = current_user.tasks
  end

  def show
    @task = Task.find(params[:id])
  end

  def new
    @task = Task.new
  end

  def create
     @task = current_user.tasks.create(task_params) 
    #  @task.user = current_user
     redirect_to(root_path)   
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to(root_path)
  end

  private

  def task_params
    params.require(:task).permit(:name)
  end
  
end

