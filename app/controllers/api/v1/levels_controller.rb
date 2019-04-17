class Api::V1::LevelsController < ApplicationController
  before_action :find_level, only: :show

  def index
    render json: Level.all, include: ['ships', 'ships.weapons']
  end

  def show
    render json: @level
  end

  private

  def find_level
    @level = Level.find(params[:id])
  end

end
