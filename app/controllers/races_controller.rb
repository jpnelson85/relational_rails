class RacesController < ApplicationController

  def index
    @races = Race.all
  end

  def show
    @race = Race.find(params[:id])
  end

  def drivers_show
    @race = Race.find(params[:id])
    @driver = Driver.find(params[@race.id])
  end
end