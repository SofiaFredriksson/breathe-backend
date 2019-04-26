class Api::V1::ActivitiesController < ApplicationController
  def index
    @activities = Activity.all
    render json: @activities
  end

  def show
    @activity = Activity.find(params[:id])
    render json: @activity
  end

  def create
    @activity = Activity.new(activity_params)
    if @activity.save
      render json: @activity
    else
      render json: {error: 'Failed to create activity'}
    end
  end

  private

  def activity_params
    params.require(:activity).permit(:title, :description, :time, :category_id)
  end
end
