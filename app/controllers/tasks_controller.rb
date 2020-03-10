class TasksController < ApplicationController
  def index
    @tasks = Task.all
  end

  def show
    @task = Task.find(params[:id])
    # GET /restaurants/:id
  end

  def new
    @task = Task.new
    # GET /restaurants/new
  end

  def create
    @task = Task.new(task_params)
    @task.save
    redirect_to tasks_path
    # POST /restaurants
  end

  def edit
    @task = Task.find(params[:id])
    redirect_to tasks_path
    # GET /restaurants/:id/edit
  end

  def update
    @task = Task.find(params[:id])
    @task.update(task_params)
    redirect_to tasks_path
    # PATCH /restaurants/:id
  end

  def destroy
    @task = Task.find(params[:id])
    @task.destroy
    redirect_to tasks_path
    # DELETE /restaurants/:id
  end

  private

  def task_params
    params.require(:task).permit(:title, :details, :completed)
  end
end
