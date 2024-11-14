class HolstersController < ApplicationController

  # 'aliens/:alien_id/holsters/new'
  def new
    @holster = Holster.new
    @alien = Alien.find(params[:alien_id])
    # @weapons = Weapon.order(name: :asc)
    # @weapons = @alien.weapons
    @weapons = Weapon.where.not(id: @alien.weapons).order(name: :asc)
  end

  def create
    @alien = Alien.find(params[:alien_id])
    @holster = Holster.new(holster_params)
    @holster.alien = @alien
    if @holster.save
      redirect_to planet_path(@alien.planet)
    else
      @weapons = Weapon.where.not(id: @alien.weapons).order(name: :asc)
      render 'new', status: :unprocessable_entity
    end
  end

  private

  def holster_params
    params.require(:holster).permit(:weapon_id)
  end
end
