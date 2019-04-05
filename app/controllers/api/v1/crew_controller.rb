class Api::V1::CrewController < ApplicationController

  def index
    render json: Crew.all
  end
  
end
