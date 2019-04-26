class Api::V1::ReflectionsController < ApplicationController
  def index
    @reflections = Reflection.all
    render json: @reflections
  end

  def show
    @reflection = Reflection.find(params[:id])
    render json: @reflection
  end

  def create
    @reflection = Reflection.new(reflection_params)
    if @reflection.save
      render json: @reflection
    else
      render json: {error: 'Failed to create reflection'}
    end
  end

  private

  def reflection_params
    params.require(:reflection).permit(:content, :score, :user_id, :activity_id)
  end
end
