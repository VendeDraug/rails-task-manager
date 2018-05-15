class TasksControllerController < ApplicationController
  before_action :set_task, only: [:show, :edit, :update, :destroy]

  def index
    @tasks = Task.all
  end

  def show
  end

  def new
    @task = Task.new
  end

  def create
    @task = Task.create(params_task)
    redirect_to tasks_path

  end

  def edit
  end

  def update
    @task = Task.update(params_task)
    redirect_to tasks_path
  end

  def destroy
    @task.destroy
    redirect_to tasks_path
  end

  private

  def set_task
    @task = Task.find(params[:id])
  end

  def params_task
    params.require(:task).permit(:title, :details, :completed)

  end
end
