class PlanetsController < ApplicationController

  # '/planets/:id'
  def show
    @planet = Planet.find(params[:id])
  end
end
