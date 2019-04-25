class TaskController < ApplicationController

  def index
    @task = Task.all
    render json: @task
  end

  def show
    @task = Task.find(params[:id])
    render json: @task
  end
end