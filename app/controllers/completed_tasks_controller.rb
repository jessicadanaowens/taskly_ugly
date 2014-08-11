class CompletedTasksController < ApplicationController

  def create
    @task = Task.find(params[:id])
    @task.update(
      complete?: true
    )
    redirect_to root_path
  end

  def index
    @task_list = TaskList.find(params[:id])
  end

end