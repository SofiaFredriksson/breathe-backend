class Api::V1::ReflectionsController < ApplicationController
  def index
    @reflections = Reflection.all
    render json: @reflections
  end

  def show
    @reflection = Reflection.find(params[:id])
    render json: @reflection
  end
end
