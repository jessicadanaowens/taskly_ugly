class TasksController < ApplicationController
  def new
    @task = Task.new
    @task_list = TaskList.find(params[:task_list_id])
  end

  def create
    p params
    @task = Task.new(
      task_list_id: params[:task_list_id],
      description: params[:task][:description],
      due_date: Task.format_date(params[:date])
    )
    if @task.save
      flash[:notice] = "Task was created successfully!"
      redirect_to root_path
    else
      @task_list = TaskList.find(params[:task_list_id])
      render :new
    end
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to root_path
  end

  def update
    @task = Task.find(params[:id])
    @task.update(
      complete?: true
    )
    redirect_to root_path
  end
end