class Api::V1::WeaponsController < ApplicationController

  def index
    render json: Weapon.all
  end
  
end
