class TasksController < ApplicationController
  def
    @tasks = Task.all
  end

  def new
    @task = Task.new
  end

  def create
    Task.create(task_params)
  end

  private 
  def task_params
    params.require(:task).permit(:title, :content)
  end

end
